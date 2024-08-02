//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Joao Leal on 8/1/24.
//

import Foundation

struct MemoryGame<CardContent>{
    private(set) var cards: Array<Card>
    
    init(numberOfPairOfCards: Int) {
        cards = []
        for _ in 0..<numberOfPairOfCards {
            cards.append(Card(content: <#T##CardContent#>))
                cards.append(Card(content: <#T##CardContent#>))
        }
    }
    
     func choose(_ card: Card){
        
    }
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
    }
}
