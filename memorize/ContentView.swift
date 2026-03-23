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
    
    //var emojis: Array<String> = ["A","B","C","D"]
    //var emojis: [String] = ["A","B","C","D"]
    var emojis = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N"]
    
    @State var emojiCount: Int = 6
    
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content:emoji)
                }
            }
            
            HStack {
                Button(action: {
                    emojiCount -= 1
                }, label: {
                    Text("Remove Card")
                })
                       
                Spacer()
            
                Button(action: {
                    emojiCount += 1
                }, label: {
                    Text("Add Card")
                })
                              
            }
        }
        .foregroundStyle(.orange)
        .padding()
}

struct CardView: View {
    @State var isFaceUp: Bool = true
    var content: String
    var body: some View {
        ZStack {
            //var shape: RoundedRectangle = RoundedRectangle(cornerRadius: 20)
            let shape = RoundedRectangle(cornerRadius: 20)
            //var shape = Circle()
            
            if isFaceUp {
                shape.fill(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape
            }
            
        }
        .onTapGesture(perform: {
            isFaceUp = !isFaceUp
        })
    }
    }
}


#Preview {
    ContentView()
}
