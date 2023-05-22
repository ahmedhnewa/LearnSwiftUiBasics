//
//  EmojiMemoryGame.swift
//  LearnSwiftUi
//
//  Created by Ahmed Hnewa on 22/05/2023.
//

import Foundation

class EmojiMemoryGameViewModel: ObservableObject {
    
    static let emojis = [
        "✅", "‼️", "❕", "❔", "💍", "🎒", "🐬", "🌄",
        "🌃", "🌐", "🌭", "🌮", "🌯", "🌶", "🍎", "🍙",
        "🍪", "🍷", "🎁", "🎈", "🎓", "🎄", "🍯", "🍔",
        "🍕", "🍖", "🍗", "🍒", "🍇", "🍉", "🍊", "🍋"
    ]
        
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private(set) var model: MemoryGame<String> = EmojiMemoryGameViewModel.createMemoryGame()
    
    var cards: [MemoryGame<String>.Card] { model.cards }
    
    init(model: MemoryGame<String>) {
        self.model = model
    }
}
