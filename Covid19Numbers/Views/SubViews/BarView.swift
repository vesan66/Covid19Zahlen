//
//  BarView.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import SwiftUI

var barMax: Double = 50

struct BarView: View {
    
    @Binding private var barValue: Double
    private let max: Double
    let bgcolor = Color(.systemGray6)
    
    init(value: Binding<Double>) {
        self._barValue = value
        self.max = AppDefaultConfiguration.barMaxValue
    }

    var body: some View {
        GeometryReader { geometry in
            HStack(alignment: .top, spacing: 0) {
                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(bgcolor)
                        .frame(width: 1 * geometry.size.width)
                        .overlay(Rectangle().stroke(Color.white))
                    LinearGradient(gradient: Gradient(colors: [Color(.systemYellow), Color(.systemRed)]), startPoint: .leading, endPoint: .trailing)
                        .mask(HStack() {
                            Rectangle()
                                .frame(width: (CGFloat(barValue)  > CGFloat(self.max) ? CGFloat(self.max) : CGFloat(barValue)) / CGFloat(self.max) * geometry.size.width)
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
                        )
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 3, maxHeight: 6).cornerRadius(25)
    }
}

#if DEBUG
struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BarView(value: .constant(25))
                .previewLayout(.fixed(width: 200, height: 100))
        }
        
    }
}
#endif



