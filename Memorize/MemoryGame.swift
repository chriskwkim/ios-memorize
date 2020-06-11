//
//  MemoryGame.swift
//  Memorize
//
//  Created by Chris Kim on 6/10/20.
//  Copyright © 2020 Chris Kim. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
