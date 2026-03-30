//
//  EmojiMemoryGame.swift
//  memorise
//
//  Created by 11147221 on 2026/3/30.
//

import Foundation

func createCardContent(index: Int) -> String {
    return "A"
}

class EmEmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4)
    
    var cards: [MemoryGame<String>.Card] {
        model.cards
    }
    
}
