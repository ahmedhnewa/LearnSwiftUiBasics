//
//  ContentView.swift
//  LearnSwiftUi
//
//  Created by Ahmed Hnewa on 20/05/2023.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["✅", "‼️", "❕", "💍", "💍", "🎒", "🐬"]
    
    @State var emojiCount = 1
    
    var body: some View {
        NavigationView {
            VStack {
                if (emojiCount >= 0) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                    }
                }
                CardView(content: emojis[0])
                HStack {
                    CardView(content: emojis[1])
                    CardView(content: emojis[2])
                    CardView(content: emojis[3])
                }
                HStack {
                    CardView(content: emojis[4])
                    CardView(content: emojis[5])
                }
                HStack {
                    Spacer()
                    remove
                    Spacer()
                    add
                    Spacer()
                }.padding(.horizontal)
            }
            .navigationTitle("My Application")
        }
    }
    
    var remove: some View {
        Button {
            print(emojiCount)
            if (emojiCount == 0) {
                return
            }
            emojiCount -= 1
        } label: {
            Image(systemName: "minus.circle")
                .font(.largeTitle)
        }
    }
    
    var add: some View {
        Button {
            print(emojiCount)
            if (emojiCount == emojis.count) {
                return
            }
            emojiCount += 1
        } label: {
            Image(systemName: "plus.circle")
                .font(.largeTitle)
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
