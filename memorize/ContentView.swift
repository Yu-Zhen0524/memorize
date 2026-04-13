//
//  ContentView.swift
//  memorise
//
//  Created by 11147221 on 2026/3/16.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        VStack {
            cardList
                .animation(.default, value: viewModel.cards)
            Spacer()
            Button("Shuffle") {
                viewModel.shuffle()
            }
            .font(.largeTitle)
        }
        .foregroundStyle(.orange)
        .padding()
    }
    
    
    var cardList: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 85), spacing: 0)], spacing: 0) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .padding(4)
                        .onTapGesture {
                            viewModel.choose(card)
                        }
                }
            }
        }
    }

    
    //    var actionButtons: some View {
    //        HStack {
    //            remove
    //            Spacer()
    //            add
    //        }
    //        .font(.largeTitle)
    //    }n
    //
    //    var remove: some View {
    //        Button {
    //            if emojiCount > 1 {
    //                emojiCount -= 1
    //            }
    //        } label: {
    //            Image(systemName: "minus.circle")
    //        }
    //    }
    //
    //    var add: some View {
    //        Button {
    //            if emojiCount < emojis.count {
    //                emojiCount += 1
    //            }
    //        } label: {
    //            Image(systemName: "plus.circle")
    //        }
    //    }
    
    struct CardView: View {
        var card: MemoryGame<String>.Card
        
        var body: some View {
            ZStack {
                //var shape: RoundedRectangle = RoundedRectangle(cornerRadius: 20)
                let shape = RoundedRectangle(cornerRadius: 20)
                //var shape = Circle()
                
                Group {
                    shape.fill(.white)
                    shape.strokeBorder(lineWidth: 3)
                    Text(content)
                        .font(Font.system(size: 300))
                        .minimumScaleFactor(0.01)
                        .aspectRatio(1, contentMode: .fit)
                }
                .opacity(isFaceUp ? 1 : 0)
                
                shape.opacity(isFaceUp ? 0 : 1)
                
            }
            
            )
        }
            .opacity(card.isMatched
    }
}


#Preview {
    ContentView(viewModeel:EmojiMemoryGame())
}
