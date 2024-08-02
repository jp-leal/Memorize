//
//  ContentView.swift
//  Memorize
//
//  Created by Joao Leal on 8/1/24.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    let emojis = ["👽", "💀","💩","🍄","🧸","👻","🎃","🐭","🐒","🕷️","💊",]
    
    var body: some View {
      
            ScrollView{
                cards
            }
                 
        .padding()
    }
    
    
    var cards: some View{
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<emojis.count, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundStyle(.orange)
    }

}
#Preview {
    ContentView()
}
