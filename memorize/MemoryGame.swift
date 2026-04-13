//
//  MemoryGame.swift
//  memorise
//
//  Created by 11147221 on 2026/3/30.
//

import Foundation
struct MemoryGame<CardContent> where CardContent: Equatable {
    var cards: [Card]
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = []
        for index in 0..<numberOfPairsOfCards {
            var cardContents: CardContent = createCardContent(index)
            cards.append(Card( content: cardContents, id: "\(index)a"))
            cards.append(Card( content: cardContents, id: "\(index)b"))
        }
        shuffle()
    }
    
    var lastFaceUpIndex: Int?
    mutating func choose(_ card: Card) {
        if let chosenIndex = index(of: card) {
            if cards[lastIndex].content == cards[chosenIndex].content {
                cards[chosenIndex].content
                }
                cards[lastIndex].isMatched = true
            }
            
        }
        cards[chosenIndex].isFaceUp.toggle()
        print("cards:\(cards)")

    }
    
    func index(of card: Card) -> Int {
        for i in 0..<cards.count {
            if cards[i].id == cards.id {
                return i
            }
        }
        return 0
    }
    
    mutating func shuffle () {
        cards.shuffle()
        print("Shuffle cards: \(cards)")
    }
    
    struct Card: Equatable, Identifiable {
        static func == (lhs: MemoryGame<CardContent>.Card, rhs: MemoryGame<CardContent>.Card) -> Bool {
            lhs.content == rhs.content && lhs.isFaceUp == rhs.isFaceUp && lhs.isMatched == rhs.isMatched && lhs.id == rhs.id
        }
        
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        
        var id: String
    }
    
}
