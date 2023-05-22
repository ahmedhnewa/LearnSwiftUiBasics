//
//  MemoryGame.swift
//  LearnSwiftUi
//
//  Created by Ahmed Hnewa on 22/05/2023.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: [Card]
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
