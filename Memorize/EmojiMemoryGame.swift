//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Joao Leal on 8/1/24.
//

import SwiftUI
import Foundation
import Observation

@Observable
class EmojiMemoryGame {
   private var model: MemoryGame<String>
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    func choose (card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
