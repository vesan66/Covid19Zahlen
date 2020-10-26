//
//  TextView.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 06.01.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation
import SwiftUI

struct TextView: UIViewRepresentable {
    @Binding var attributedText: NSAttributedString
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.delegate = context.coordinator
        view.isScrollEnabled = true
        view.isEditable = false //true
        view.isUserInteractionEnabled = true //true
        view.backgroundColor = UIColor.systemBackground
        //view.backgroundColor = UIColor.systemGreen
        return view
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = self.attributedText
        uiView.textColor = UIColor.label
        //uiView.font = UIFont(name: "HelveticaNeue", size: 35)
        //uiView.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.callout)
        uiView.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.footnote)
    }
    
    class Coordinator : NSObject, UITextViewDelegate {
        
        var parent: TextView
        
        init(_ uiTextView: TextView) {
            self.parent = uiTextView
        }
        
        func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
            return true
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.parent.attributedText = textView.attributedText
        }
    }
}
