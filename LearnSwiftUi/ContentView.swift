//
//  ContentView.swift
//  LearnSwiftUi
//
//  Created by Ahmed Hnewa on 20/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                CardView(label: "Item 2")
                HStack {
                    CardView(label: "Item 3")
                    CardView(label: "Item 4")
                    CardView(label: "5")
                }
                HStack {
                    CardView(label: "😁")
                    CardView(label: "✅")
                }
            }
            .navigationTitle("Hi")
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
