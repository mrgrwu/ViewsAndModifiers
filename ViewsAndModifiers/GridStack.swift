//
//  GridStack.swift
//  ViewsAndModifiers
//
//  Created by Greg Wu on 9/8/21.
//

import SwiftUI

struct GridStack<Content: View>: View {  // Create a custom view container
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<self.columns, id: \.self) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
}
