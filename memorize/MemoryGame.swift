//
//  MemoryGame.swift
//  memorise
//
//  Created by 11147221 on 2026/3/30.
//

import Foundation
struct MemoryGame<CardContent> {
    var cards: [Card]
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = []
        for index in 0..<numberOfPairsOfCards {
            var cardContents: CardContent = createCardContent(index)
            cards.append(Card( content: cardContents))
            cards.append(Card( content: cardContents))
        }
    }
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
    
}
