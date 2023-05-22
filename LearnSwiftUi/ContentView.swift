//
//  ContentView.swift
//  LearnSwiftUi
//
//  Created by Ahmed Hnewa on 20/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = MemoryGameViewModel()
    
    var emojiCount = 8
    
    var body: some View {
        VStack {
            ScrollView {
                if emojiCount >= 0 {
                    LazyVGrid(
                        columns: [
                            GridItem(.adaptive(minimum: 100))
                        ]
                    ) {
                        ForEach(viewModel.cards[0..<emojiCount]) { card in
                            CardView(card)
                                .aspectRatio(2 / 3, contentMode: .fit)
                                .onTapGesture { viewModel.chooseCard(card) }
                        }
                    }
                    .padding(.horizontal, 2)
                }
            }
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "car")
                        .font(.largeTitle)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "questionmark.circle")
                        .font(.largeTitle)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "circle")
                        .font(.largeTitle)
                }
                Spacer()
            }
        }
        .navigationTitle("My Application")
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDisplayName("Dark Content View")
            .preferredColorScheme(.dark)
        ContentView()
            .previewDisplayName("Light Content View")
            .preferredColorScheme(.light)
    }
}
