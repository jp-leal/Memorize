//
//  CardView.swift
//  Memorize
//
//  Created by Joao Leal on 8/1/24.
//

import SwiftUI

struct CardView: View {
    @State var content = ""
    @State var isFaceUp: Bool = true
 
    var body: some View {
        
        ZStack {
            var base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            Group{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                    
                Text(content)
                    .font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }}
#Preview {
    CardView()
}
