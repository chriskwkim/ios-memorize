//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Chris Kim on 6/10/20.
//  Copyright © 2020 Chris Kim. All rights reserved.
//

import SwiftUI

//func createCardContent(pairIndex: Int) -> String {
//        return "😀"
//}
    
class EmojiMemoryGame {
//    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: createCardContent)
    
//    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: { (pairIndex: Int) -> String in
//        return "😀"
//    })

//    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 2) { _ in "😀" }
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }

    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
