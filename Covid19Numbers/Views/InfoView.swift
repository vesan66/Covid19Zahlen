//
//  InfoView.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    @Binding var showModal: Bool
        
    var btnBack : some View {
        Button(action: {
            self.showModal.toggle()
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
            Text("IDtextInfoTitle")
                .font(.headline)
                .padding(Edge.Set.top, 30)//.background(Color.green)
            TextView(attributedText: .constant(AppDefaultConfiguration.info_RTF_Text))
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .padding(.horizontal)//.background(Color.green)
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


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InfoView(showModal: .constant(true))
            
            Text("Enable 'Live-Preview' to see the sheet!")
                .sheet(isPresented: .constant(true)) {
                    InfoView(showModal: .constant(true))
            }
        }
    }
}

