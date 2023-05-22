//
//  Card.swift
//  LearnSwiftUi
//
//  Created by Ahmed Hnewa on 21/05/2023.
//

import SwiftUI

struct CardView: View {
    let card: MemoryGameModel<String>.Card
    
    init(_ card: MemoryGameModel<String>.Card) {
        self.card = card
    }
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape
                    .strokeBorder(lineWidth: 3)
                    .foregroundColor(.red)
//                shape.foregroundColor(.white)
//                shape.stroke(lineWidth: 3)
                Text(card.content)
//                    .font(.system(size: 50))
                    .font(.title)
            } else if card.isMatched {
                shape.opacity(0.5)
            } else {
                shape
                    .fill()
            }
        }
        .padding(.horizontal, 4)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(getMemoryCardPreview(isDark: true, id: 1))
            .previewDisplayName("Dark Card View")
            .preferredColorScheme(.dark)
        CardView(getMemoryCardPreview(isDark: false, id: 2))
            .previewDisplayName("Light Card View")
            .preferredColorScheme(.light)
    }
    private static func getMemoryCardPreview(isDark: Bool, id: Int) -> MemoryGameModel<String>.Card {
        MemoryGameModel.Card(
            content: isDark ? "🌑" : "☀️",
            id: id
        )
    }
}
