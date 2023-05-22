//
//  Card.swift
//  LearnSwiftUi
//
//  Created by Ahmed Hnewa on 21/05/2023.
//

import SwiftUI

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape
                    .strokeBorder(lineWidth: 3)
                    .foregroundColor(.red)
//                shape.foregroundColor(.white)
//                shape.stroke(lineWidth: 3)
                Text(content)
//                    .font(.system(size: 50))
                    .font(.title)
            } else {
                shape
                    .fill()
                    .onTapGesture {
                        isFaceUp.toggle()
                    }
            }
        }
        .padding(.horizontal, 4)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "🌑")
            .previewDisplayName("Dark Card View")
            .preferredColorScheme(.dark)
        CardView(content: "☀️")
            .previewDisplayName("Light Card View")
            .preferredColorScheme(.light)
    }
}
