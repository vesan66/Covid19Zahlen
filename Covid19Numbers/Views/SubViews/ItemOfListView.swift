//
//  ItemOfFavoritesView.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import SwiftUI

struct ItemOfListView: View {
    @ObservedObject private var county: CovidCasesPerObjectIDP
    
    @State var displayStarFunction: Bool
    @Binding var favoritesAreChanged: Bool
    
    init(item county: CovidCasesPerObjectIDP, displayStarFunction: Bool = true, favoritesAreChanged: Binding<Bool> = .constant(false)) {
        self.county = county
        self._displayStarFunction = .init(wrappedValue: displayStarFunction)
        self._favoritesAreChanged = favoritesAreChanged
    }
    
    fileprivate func starButton() -> some View {
        return (self.displayStarFunction != true) ? nil :
            Button(action: {
            county.IsFavorite.toggle()
            
            self.favoritesAreChanged = true
        
        }) {
            if county.IsFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                    .padding(.bottom, 3)
            } else {
                Image(systemName: "star")
                    .foregroundColor(Color.gray)
                    .padding(.bottom, 3)
            }
            }.buttonStyle(PlainButtonStyle())
    }
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            VStack(alignment: .leading) {
                // Title
                HStack(alignment: .bottom) {
                    starButton()
                    Text(county.DisplayName)
                        .font(.body)
                        .fontWeight(.bold)
                        .lineLimit(1)
                }

                // Bar
                BarView(value: $county.cases[0].cases7_per_100k)
            }
            HStack() {
                VStack{
                    HStack(alignment: .bottom) {
                        Text(DisplayHelpers.FormatDoubleLocale(county.cases[0].cases7_per_100k))
                            .font(.title)
                            .fontWeight(.regular)
                            .padding(.leading, 2.0)
        
                        Text(DisplayHelpers.FormatDoubleLocale(county.cases[0].newCases_per_100k))
                            .font(.headline)
                            .fontWeight(.regular)
                            .padding(.leading, 15.0)
                        Spacer()
                    }.padding(.leading)
                    
                    
                    if county.cases.count >= 2 {
                        HStack{
                            Text(DisplayHelpers.FormatDoubleLocale(county.cases[1].cases7_per_100k))
                                .font(.caption)
                                .fontWeight(.light)
                                .padding(.leading, 2.0)
                            Text(DisplayHelpers.FormatDoubleLocale(county.cases[1].newCases_per_100k))
                                .font(.caption)
                                .fontWeight(.light)
                                .padding(.leading, 15.0)
                            
                            Text((county.cases[1].newCases > 0 ? "+ " : "") + DisplayHelpers.FormatIntegerLocale(county.cases[1].newCases))
                                .font(.caption)
                                .fontWeight(.light)
                                .padding(.leading, 10.0)
                            Spacer()
                        }.padding(.leading).padding(.top, -1)
                    } else { Spacer() }
                    
                }
                .padding(.top, 4)
                
                Text((county.cases[0].newCases > 0 ? "+ " : "") + DisplayHelpers.FormatIntegerLocale(county.cases[0].newCases))
                    .font(.largeTitle)
                    .padding(.trailing, 15)
                Spacer()
            }
        }
        .padding([.top, .leading, .bottom], 8)
        
    }
}

struct ItemOfListViewInfo: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 3) {

            Text(NSLocalizedString("ID_Landkreis", comment: ""))
                .font(.footnote)
                .fontWeight(.heavy)
            
            HStack() {
            VStack{
                HStack{
                    Text(NSLocalizedString("ID_7ti", comment: ""))
                        .font(.footnote)
                        .padding(.leading, 2.0)
                    Text(NSLocalizedString("ID_1ti", comment: ""))
                        .font(.footnote)
                        .padding(.leading, 10.0)
                    Spacer()
                }
                
                HStack{
                    Text(NSLocalizedString("ID_Vortagesdaten", comment: ""))
                        .font(.caption)
                        .fontWeight(.light)
                        .padding(.leading, 2.0)
                    Spacer()
                }
                .padding(.top, 3)
            }
            .padding(.leading, 8)
                Text(NSLocalizedString("ID_NewCases", comment: ""))
                    .font(.footnote)
                    .padding(.leading, 2.0)
                    .padding(.trailing, 20.0)
            }.padding(.top, 3)
        }
        .padding(8)
    }
}

#if DEBUG
struct ItemOfListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ItemOfListView(item: MakeCounty())
                .previewLayout(.sizeThatFits)
        }
        Group {
            NavigationView{
                List() {
                    ItemOfListViewInfo()
                    ItemOfListView(item: MakeCounty())
                    ItemOfListView(item: MakeCounty())
                }
                .listStyle(DefaultListStyle())
                .navigationBarTitle("County List", displayMode: .automatic)
            }
            .previewDevice(PreviewDevice(rawValue: "iPhone SE (1st generation)"))
            NavigationView{
                List() {
                    ItemOfListViewInfo()
                    ItemOfListView(item: MakeCounty())
                    ItemOfListView(item: MakeCounty())
                }
                .listStyle(DefaultListStyle())
                .navigationBarTitle("County List", displayMode: .automatic)
            }
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
    }
}
#endif
