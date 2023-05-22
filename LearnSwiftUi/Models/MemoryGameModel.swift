//
//  MemoryGame.swift
//  LearnSwiftUi
//
//  Created by Ahmed Hnewa on 22/05/2023.
//

import Foundation

struct MemoryGameModel<CardContent> where CardContent: Equatable {
    private(set) var cards: [Card]
    
//    private var indexOfOneAndOnlyFaceUpCard: Int = -1 // it could be also like this:
    private var indexOfOneAndOnlyFaceUpCard: Int? = nil
    
    mutating func choose(_ card: Card) {
        guard let cardIndex = cards.firstIndex(where: { $0.id == card.id}) else {
            print("Can't find card index for \(card).")
            return
        }
        if (cards[cardIndex].isFaceUp) {
            print("Face up cards can't be toggled to face down.")
            return
        }
        if (cards[cardIndex].isMatched) {
            print("Matched cards can't be toggled to face down.")
            return
        }
        // if the indexOfOneAndOnlyFaceUpCard is not null
        if let potentialMatchIndex = indexOfOneAndOnlyFaceUpCard {
            // if got matched
            if cards[cardIndex].content == cards[potentialMatchIndex].content {
                print("We got a match!")
                cards[cardIndex].isMatched = true
                cards[potentialMatchIndex].isMatched = true
            }
            // we don't want it on next time
            indexOfOneAndOnlyFaceUpCard = nil
        } else {
            // if indexOfOneAndOnlyFaceUpCard is null, then make it not
            // also reset all the cards to default isFaceUp if it's not
            for index in cards.indices {
                cards[index].isFaceUp = false
            }
            indexOfOneAndOnlyFaceUpCard = cardIndex
        }
        cards[cardIndex].isFaceUp.toggle()
    }
    
    init(numberOfPairOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
                
        var id: Int
        
//        mutating func toggleIsFaceUp() { isFaceUp.toggle() }
    }
}
