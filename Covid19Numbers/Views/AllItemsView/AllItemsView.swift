//
//  AllItemsView.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 11.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import SwiftUI
import os.log

struct AllItemsView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @ObservedObject private var obProps = AppController.appFunctions.GetObservedProperties()
    private var appFunctions = AppController.appFunctions
    
    @State private var showInfo: Bool = false
    @State private var searchText = ""
    @State private var showSummaryModal: Bool = false
    @State private var showSortModal: Bool = false
    @State private var currentSortOrder: SortType = SortType.alphabetic
    
    @Binding public var favoritesAreChanged: Bool
    
    @State var willComeUp: Bool = false
    
    @State private var refreshingID = UUID()
    
    
    private var afterDismissAction: ()->Void = { return }
    
    init(favoritesAreChanged: Binding<Bool>, actionAfterDissmiss: @escaping ()->Void) {
        self._favoritesAreChanged = favoritesAreChanged
        self.afterDismissAction = actionAfterDissmiss
        self.refreshingID = UUID()
    }
    
    func filterdCases() -> [CovidCasesPerObjectIDP] {
        return (self.obProps.dataForDisplay.cases.filter { self.searchText.isEmpty ? true : $0.DisplayName.lowercased().contains(self.searchText.lowercased())})
    }
    
    func scrollToTop() {
        self.refreshingID = UUID()
    }
    
    
    var body: some View {
            VStack(spacing: 0) {
                List() {
                    SearchBar(searchString: $searchText)//.padding(.top, -30)
                    ItemOfListViewInfo()
                        .padding(.bottom, -10)
                    ForEach(self.filterdCases(), id: \.idLandkreis)  { item in
                        self.NavLinkItem(item: item)
                        
                        .background(Color(.systemGray6))
                        .cornerRadius(3)
                        
                        
                    }
                }
                .id(refreshingID)
                .listStyle(DefaultListStyle()) //.listStyle(SidebarListStyle()) //.listStyle(PlainListStyle())
                
                Divider()
                HStack {
                    self.showSortButton()
                    Spacer()
                    self.showScrollToTopButton()
                    Spacer()
                    self.showSummaryButton()
                }
                .padding([.leading, .trailing])
                .padding(.top, 7)
                .padding(.bottom, 3)
                .background(Color(.systemGray6)) //.background(Color(.green))
            }
            .navigationBarTitle(NSLocalizedString("ID_Alle_Landkreise", comment: ""), displayMode: .inline)
            .onChange(of: self.mode.wrappedValue.isPresented) { value in
                if value == false {
                    Logger.log.notice("Going to dismiss.")
                    self.afterDismissAction()
                }
            }
    }
    
}


// MARK: - Sort Button
extension AllItemsView {

    func showSortButton() -> some View {
        return self.sortButton
    }
    
    var sortButton: some View {
        Button(action: {
            self.currentSortOrder = self.obProps.currentSort
            self.showSortModal.toggle()
        },
        label: {
            VStack(spacing:0) {
            HStack(alignment: .center, spacing:0) {Image(systemName: "arrow.up.arrow.down.circle").imageScale(.large)}
                .padding(.bottom, 1)
            HStack(alignment: .center, spacing:0) {Text("ID_Sort").font(.caption)}
            }
            .padding([.leading,.trailing], 8)
            .foregroundColor(Color.blue)
        })
            .sheet(isPresented: $showSortModal) {
                SortSheetView(showSortSheetModal: self.$showSortModal, currentSortType: self.$currentSortOrder)
            }.onChange(of: self.currentSortOrder, perform: { value in
                if self.currentSortOrder != self.obProps.currentSort {
                    self.obProps.currentSort = self.currentSortOrder
                    Logger.log.notice("Need to update the sort order.")
                    self.appFunctions.ChangeSortOrder(sortOrder: self.currentSortOrder)
                }
            })
    }
}


// MARK: - Details Button
extension AllItemsView {
    
    
    
    func NavLinkItem(item: CovidCasesPerObjectIDP)-> some View {
        let v =
            NavigationLink(destination:
                            self.NavLinkAction(idLandkreis: item.idLandkreis)
            ) {
            ItemOfListView(item: item, displayStarFunction: true, favoritesAreChanged: self.$favoritesAreChanged)
                
        }
        return v.padding(.trailing, 10)
    }
    
    func NavLinkAction(idLandkreis: String) -> some View {
        let v = SummarySheetCountyView().onAppear(perform: {
            self.appFunctions.GetDataForOneCounty(idLandkreis: idLandkreis)
        })
        
        return v
    }
}


// MARK: - Summary Button
extension AllItemsView {
    func showSummaryButton() -> some View {
        return self.summaryButton
    }
    
    var summaryButton: some View {
        Button(action: {
            self.appFunctions.CalculateSummaryData()
            self.showSummaryModal.toggle()
            
        }, label: {
            VStack(spacing:0) {
            HStack(alignment: .center, spacing:0) {Image(systemName: "sum").imageScale(.large)}
                .padding(.bottom, 1)
            HStack(alignment: .center, spacing:0) {Text("ID_Sum").font(.caption)}
            }
            .padding([.leading,.trailing], 8)
            .foregroundColor(Color.blue)
        } ) .sheet(isPresented: $showSummaryModal) {
            SummarySheetView(showSummaryModal: self.$showSummaryModal,
                         summaryForDays: self.$obProps.summarySheetData.summaryForDays
            )
        }
    }
}


// MARK: - Scroll To Top
extension AllItemsView {
    func showScrollToTopButton() -> some View {
        return self.scrollToTopButton
    }
    
    var scrollToTopButton: some View {
        Button(action: { self.scrollToTop() }, label: {
            VStack(spacing:0) {
            HStack(alignment: .center, spacing:0) {Image(systemName: "arrow.up").imageScale(.large)}
                .padding(.bottom, 1)
            HStack(alignment: .center, spacing:0) {Text("ID_Top").font(.caption)}
            }
            .padding([.leading,.trailing], 8)
            .foregroundColor(Color.blue)
        })
    }
}
