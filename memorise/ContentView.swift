//
//  ContentView.swift
//  memorise
//
//  Created by 11147221 on 2026/3/16.
//

import SwiftUI

struct ContentView: View {
    //    var name: String = "Jane"
    //    var greeting: String {
    //        "hi,\(name)!"
    //    }
    
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView()
            CardView()
            CardView()
            
                .foregroundStyle(.orange)
                .padding()
        }
    }
}

struct CardView: View {
    var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(lineWidth: 3)
            }
            RoundedRectangle(cornerRadius: 20)
                .strokeBorder(lineWidth: 3)
            
            Text("🥳⚾️helllo")
        }
    }
}

#Preview {
    ContentView()
}
