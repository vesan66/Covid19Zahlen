//
//  Searchbar.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchString: String
    
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            
            TextField(NSLocalizedString("ID_Search", comment: ""), text: $searchString)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.secondary)
                            .padding(.trailing, 8)
                            .opacity(searchString == "" ? 0 : 1)
                            .onTapGesture {
                                self.searchString = ""
                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                self.isEditing = false
                            }
                        
                    }
                )
                .padding(.horizontal, 10)
        }
    }
}

#if DEBUG
struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchString: .constant(""))
        .previewLayout(.sizeThatFits)
    }
}
#endif
