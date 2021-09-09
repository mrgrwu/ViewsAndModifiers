//
//  BlueTitle.swift
//  ViewsAndModifiers
//
//  Created by Greg Wu on 9/8/21.
//

import SwiftUI

struct BlueTitle: ViewModifier {  // Create a custom view modifier that formats text as large blue title, and add it as an extension to View
    
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func blueTitled() -> some View {
        self.modifier(BlueTitle())
    }
}
