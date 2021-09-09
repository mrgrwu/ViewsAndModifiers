//
//  Watermark.swift
//  ViewsAndModifiers
//
//  Created by Greg Wu on 9/8/21.
//

import SwiftUI

struct Watermark: ViewModifier {  // Create a custom view modifier that adds a watermark, and add it as an extension to View
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}
