//
//  EmojiMemoryGame.swift
//  LearnSwiftUi
//
//  Created by Ahmed Hnewa on 22/05/2023.
//

import Foundation

class MemoryGameViewModel: ObservableObject {
    
    static let emojis = [
        "✅", "‼️", "✅", "❔", "💍", "🎒", "🐬", "🌄",
        "❕", "‼️", "❕", "❔", "💍", "🎒", "🐬", "🌄",
        "🌃", "🌐", "🌭", "🌮", "🌯", "🌶", "🍎", "🍙",
        "🍪", "🍷", "🎁", "🎈", "🎓", "🎄", "🍯", "🍔",
        "🍕", "🍖", "🍗", "🍒", "🍇", "🍉", "🍊", "🍋"
    ]
    
    static func createMemoryGame() -> MemoryGameModel<String> {
        MemoryGameModel(numberOfPairOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGameModel<String> = MemoryGameViewModel.createMemoryGame()
    
    var cards: [MemoryGameModel<String>.Card] { model.cards }
    // MARK: - Intent(s)
    func chooseCard(_ card: MemoryGameModel<String>.Card) {
//        objectWillChange.send()
        model.choose(card)
    }
}

