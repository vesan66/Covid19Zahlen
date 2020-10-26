//
//  SortSheet.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import SwiftUI

struct SortSheetView: View {
    
    @Binding var showSortSheetModal: Bool
    @Binding var currentSortType: SortType
    
    var btnBack : some View {
        Button(action: {
            self.showSortSheetModal.toggle()
        }){
            VStack(spacing:0) {
            HStack(alignment: .center, spacing:0) {Image(systemName: "xmark.circle").imageScale(.large)}
                .padding(.bottom, 1)
            HStack(alignment: .center, spacing:0) {Text("ID_Close").font(.caption)}
            }
            .padding([.leading,.trailing], 8)
            .foregroundColor(Color.blue)
        }
    }
    
    var body: some View {
        
        VStack(spacing: 0){
            Text(NSLocalizedString("ID_Sorting", comment: ""))
                .font(.headline)
                .padding(Edge.Set.bottom, 10)
                .padding(Edge.Set.top, 30)//.background(Color.green)
            List{
                Button(action: { self.currentSortType = SortType.alphabetic; self.showSortSheetModal = false }) {
                    Text(NSLocalizedString("ID_SortByCounties", comment: "")).foregroundColor(self.currentSortType == SortType.alphabetic ? /*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/ : .none)
                }
                
                Button(action: { self.currentSortType = SortType.cases1Per100k; self.showSortSheetModal = false  }) {
                    Text(NSLocalizedString("ID_1ddesc", comment: "")).foregroundColor(self.currentSortType == SortType.cases1Per100k ? /*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/ : .none)
                }
                
                Button(action: { self.currentSortType = SortType.cases7Per100k; self.showSortSheetModal = false  }) {
                    Text(NSLocalizedString("ID_7ddesc", comment: "")).foregroundColor(self.currentSortType == SortType.cases7Per100k ? /*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/ : .none)
                }
                
//                Button(action: { self.sortMode = 3; self.showSortSheetModal = false  }) {
//                    Text("Favorites descending")
//                }
                
            }

            Spacer()
            Divider()
            HStack {
                Spacer()
                self.ButtonBack()
            }
            .padding([.leading, .trailing])
            .padding(.top, 7)
            .padding(.bottom, 7)
            //.background(Color(.green))
            .background(Color(.systemGray6))
            
        }
        
    }
    
    func ButtonBack() -> some View {
        return self.btnBack
    }
}

#if DEBUG
struct SortSheetView_Previews: PreviewProvider {
    static var previews: some View {
        Text("Enable 'Live-Preview' to see the sheet!").sheet(isPresented: .constant(true)) {
            SortSheetView(showSortSheetModal: .constant(true), currentSortType: .constant(SortType.alphabetic))
        }
    }
}
#endif
