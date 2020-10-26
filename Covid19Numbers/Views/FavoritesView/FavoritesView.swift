//
//  ContentView.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 11.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import SwiftUI
import os.log

struct FavoritesView: View {
    typealias IndexToIdLandkreisMap = [Int: String]
    
    class MapHelper{
        var indexMap = IndexToIdLandkreisMap()
        func ClearMap() {
            self.indexMap = IndexToIdLandkreisMap()
        }
    }
    
    @ObservedObject private var obProps = AppController.appFunctions.GetObservedProperties()
    private var appFunctions = AppController.appFunctions
    
    @State private var showInfo: Bool = false
    @State private var favoritesAreChanged: Bool = false
    @State private var refreshingID = UUID()
    
    private var mapHelper = MapHelper()
    
    fileprivate func appInformations() -> some View {
        return Group(){
            if self.obProps.displayInfoFrame == true {
                Divider()
                HStack {
                    
                    Spacer()
                    Text("\(obProps.appStatus.description)")
                        .font(.caption)
                    Spacer()
                    
                }
                .padding()
                .background(Color(.systemGray3))
                .cornerRadius(6)
            }
        }
    }
    
    var body: some View {
        NavigationView() {
            VStack(spacing: 0) {
                List() {
                    if obProps.loadingDataFromDB == true {
                        HStack(alignment: .center) {
                            Spacer()
                            Text(NSLocalizedString("ID_Loading", comment: ""))
                                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
                            Spacer()
                        }
                    } else {
                        if obProps.dataForDisplay.cases.count == 0 {
                            HStack(alignment: .center) {
                                Spacer()
                                Text(NSLocalizedString("ID_NOData", comment: ""))
                                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
                                Spacer()
                            }
                        } else if obProps.dataForDisplay.casesFavorites.count == 0 {
                            ItemOfListViewInfo()
                            HStack(alignment: .center) {
                                Spacer()
                                NavigationLink(destination:
                                                self.AllItemsViewDisplay()
                                                //.onDisappear(perform: {storeFavorites()})
                                ) {
                                    Text(NSLocalizedString("ID_NOFavorites", comment: "")).frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
                                    .foregroundColor(Color.blue)
                                }
                                Spacer()
                            }
                        } else {
                            ItemOfListViewInfo()
                                .padding(.bottom, -10)
                            
                            self.ClearMap()
                            ForEach(self.obProps.dataForDisplay.casesFavorites.indices, id: \.self) { index in
                                self.AppendIdLandkreisToIndexMapper(county: self.obProps.dataForDisplay.casesFavorites[index], index: index)
                                
                                self.NavLinkItem(item: self.obProps.dataForDisplay.casesFavorites[index])
                                    .background(Color(.systemGray6))
                                    .cornerRadius(3)
                            }
                            .onDelete(perform: deleteItems).id(refreshingID)
                            
                            
                        }
                    }
                }
                //.listStyle(DefaultListStyle())
                //.listStyle(SidebarListStyle())
                .listStyle(PlainListStyle())
                
                appInformations()
                
                Divider()
                HStack {
                    self.showInfoButton()
                    Spacer()
                    self.refreshButton()
                }
                .padding([.leading, .trailing])
                .padding(.top, 7)
                .padding(.bottom, 3)
                .background(Color(.systemGray6)) //.background(Color(.green))
            }
            .navigationBarItems(trailing:
                                    NavigationLink(destination:
                                                    self.AllItemsViewDisplay()
                                    ) {
                                        Text(NSLocalizedString("ID_Alle", comment: "like ALL counties"))
                                            .font(.body)
                                            .padding([.top, .bottom], 10)
                                            .padding([.leading], 25)
                                            //.background(Color(.green))
                                    }
            )
            
            .navigationBarTitle(NSLocalizedString("ID_Landkreise", comment: ""), displayMode: .automatic) // displayMode: .automatic // displayMode: .inline
        }
    }
    
}

// MARK: - Buttons
extension FavoritesView {
    func refreshButton() -> some View {
        let v =
            Button(action: { self.doManualRefresh() }) {                
                VStack(spacing:0) {
                HStack(alignment: .center, spacing:0) {Image(systemName: "arrow.2.circlepath").imageScale(.medium)}
                    .padding(.bottom, 4)
                HStack(alignment: .center, spacing:0) {Text(NSLocalizedString("ID_Stand", comment: "") + DTAI(dateTimeAsInteger: self.obProps.latestTimeStampOfDB).DateTimeForDisplay()).font(.caption)}
                }
                .padding([.leading,.trailing], 8)
                .foregroundColor(Color.blue)
            }
        return v
    }

    var infoButton: some View {
        Button(action: {self.showInfo.toggle()}, label: {
            VStack(spacing:0) {
            HStack(alignment: .center, spacing:0) {Image(systemName: "info.circle").imageScale(.large)}
                .padding(.bottom, 1)
            HStack(alignment: .center, spacing:0) {Text("ID_Info").font(.caption)}
            }
            .padding([.leading,.trailing], 8)
            .foregroundColor(Color.blue)
        } ) .sheet(isPresented: $showInfo) {
            InfoView(showModal: self.$showInfo)
        }
    }
    
    func showInfoButton() -> some View {
        return self.infoButton
    }
}


// MARK: - Details Button
extension FavoritesView {
    func NavLinkItem(item: CovidCasesPerObjectIDP)-> some View {
        let v =
            NavigationLink(destination:
                            self.NavLinkAction(idLandkreis: item.idLandkreis)// CountyDetail(county: item)
            ) {
            ItemOfListView(item: item, displayStarFunction: false)
                
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

extension FavoritesView {
    
    func doManualRefresh() {
        self.appFunctions.WantUpdateFrom_UserRefresh()
    }
    
    func AllItemsViewDisplay() -> some View {
        return AllItemsView(favoritesAreChanged: self.$favoritesAreChanged, actionAfterDissmiss: {
            self.storeFavorites()
        })
    }
    
    func storeFavorites() {
        if self.favoritesAreChanged == true {
            Logger.log.notice("Need to store favorites.")
            self.appFunctions.StoreFavorites(favoritesStored: { _ in
                self.favoritesAreChanged = false
            })
        } else {
            Logger.log.notice("Favorites are unchanged.")
        }
    }
    
    func ClearMap() -> some View  {
        Logger.funcStart.notice("ClearMap")
        self.mapHelper.ClearMap()
        return EmptyView()
    }
    
    func AppendIdLandkreisToIndexMapper(county: CovidCasesPerObjectIDP, index: Int) -> some View   {
        Logger.funcStart.notice("AppendIdLandkreisToIndexMapper: \(county.idLandkreis, privacy: .public), \(county.DisplayName, privacy: .public) at Index: \(index, privacy: .public)")
        self.mapHelper.indexMap[index] = county.idLandkreis
        return EmptyView()
    }
    
    
    func deleteItems(at offsets: IndexSet) {
        for idx in offsets {
            if let idLandkreis = self.mapHelper.indexMap[idx] {
                self.mapHelper.indexMap.removeValue(forKey: idx)
                self.appFunctions.DelteAndRemoveAFavorite(idLandkreis: idLandkreis)
                self.refreshingID = UUID()   // This is the trick, to invalidate the foreach group!
                break
            }
        }
    }
}

//struct FavoritesView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group{
//            FavoritesView(data: DataController(), showInformation: true)
//                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
//            FavoritesView(data: DataController(), showInformation: false)
//                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
//            FavoritesView(data: DataController(), showInformation: true)
//                .previewDevice(PreviewDevice(rawValue: "iPhone SE (1st generation)"))
//        }
//    }
//}


//.background(Color(.green))
