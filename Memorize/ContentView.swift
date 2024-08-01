//
//  ContentView.swift
//  Memorize
//
//  Created by Joao Leal on 8/1/24.
//

import SwiftUI

struct ContentView: View {
    
    let emojis = ["👽", "💀","💩","🍄","🧸","👻","🎃","🐭","🐒","🕷️","💊",]
    
    @State private var cardCount: Int = 4
    
    var body: some View {
        VStack{
            ScrollView{
                cards
            }
            Spacer()
            cardCounAdjuster
                        
        } .padding()
    }
    
    func cardCoundAdjuster(by offset: Int, symbol: String) -> some View{
        Button(action: {
            cardCount += offset
            }
               , label: {
            Image(systemName: symbol)
        }).imageScale(.large)
            .font(.largeTitle)
            .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
    
    var cardCounAdjuster: some View{
        HStack{
            cardRemover
            Spacer()
            cardAdder
        } .padding()
    }
    var cards: some View{
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundStyle(.orange)
    }

    var cardAdder: some View{
  cardCoundAdjuster(by: +1, symbol: "rectangle.stack.badge.plus.fill")
    }
    
    var cardRemover: some View {
        return cardCoundAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
    }
}
#Preview {
    ContentView()
}
