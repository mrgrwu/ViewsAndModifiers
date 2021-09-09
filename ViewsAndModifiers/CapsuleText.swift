//
//  CapsuleText.swift
//  ViewsAndModifiers
//
//  Created by Greg Wu on 9/8/21.
//

import SwiftUI

struct CapsuleText: View {  // Create a custom text view type that includes modifiers
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .padding()
            .foregroundColor(.black)
            .background(Color.blue)
            .clipShape(Capsule())
    }
}
