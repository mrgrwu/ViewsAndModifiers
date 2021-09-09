//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Greg Wu on 9/5/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
                .watermarked(with: "Hacking with Swift")
            VStack(spacing: 20) {
                Text("Views and Modifiers").blueTitled()
                CapsuleText(text: "First")
                CapsuleText(text: "Second")
                CapsuleText(text: "Third")
                GridStack(rows: 4, columns: 4) { row, col in
                    Text("R\(row) C\(col)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
