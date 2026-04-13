//
//  EmojiMemoryGame.swift
//  memorise
//
//  Created by 11147221 on 2026/3/30.
//

import Foundation

@Observable
class EmojiMemoryGame {
    private static var enmojis =     ["鼠","牛","虎","兔","龍","蛇","馬","羊","猴","雞","狗","豬","A","B","C","D","E","F","G","H","I","J","K","L","M","N"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent : {index in EmojiMemoryGame.enmojis[index]} )
    }
    
    private var model : MemoryGame<String> = createMemoryGame()
    
    var cards: [MemoryGame<String>.Card] {
        model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }

}



//struct MemoryGame<Cardcontent> {
//    var card:
//}
//
//func createCardContent(index: Int) -> String {
//    return "A"
//}
//
//class EmEmojiMemoryGame {
//    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent : createCardContent)
//
//    var cards: [MemoryGame<String>.Card] {
//        model.cards
//    }
//}
