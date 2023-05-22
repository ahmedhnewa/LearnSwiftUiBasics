//
//  ContentView.swift
//  LearnSwiftUi
//
//  Created by Ahmed Hnewa on 20/05/2023.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["✅", "‼️", "❕", "❔", "💍", "🎒", "🐬", "E", "F", "2", "4", "M", "K", "W", "S", "A", "D"]
    
    @State var emojiCount = 8
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    if emojiCount >= 0 {
                        LazyVGrid(
                            columns: [
                                GridItem(.adaptive(minimum: 100))
                            ]
                        ) {
                            ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                                CardView(content: emoji)
                                    .aspectRatio(2 / 3, contentMode: .fit)
                            }
                        }
                        .padding(.horizontal, 2)
                    }
                }
            }
            .navigationTitle("My Application")
        }
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
