//
//  Card.swift
//  LearnSwiftUi
//
//  Created by Ahmed Hnewa on 21/05/2023.
//

import SwiftUI

struct CardView: View {
    let label: String
    @State var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape
                    .stroke(lineWidth:3)
                    .foregroundColor(Color.red)
                Text(label)
                    .font(.largeTitle)
            } else {
                shape.fill()
                    .onTapGesture {
                        isFaceUp.toggle()
                    }
            }
        }.padding(.horizontal)
    }
}
