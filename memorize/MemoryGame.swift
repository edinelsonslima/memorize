//
//  MemorizeGame.swift
//  memorize
//
//  Created by Edinelson Lima on 07/06/22.
//

import Foundation
 
struct MemoryGame<CardContent > {
    var cards: Array<Card>
    
    mutating func choose(card: Card){
        print("card chosen: \(card)")
        let choosenIndex: Int = self.index(of: card)
        self.cards[choosenIndex].isFaceUp = !self.cards[choosenIndex].isFaceUp
    }
    
    func index(of: Card) -> Int {
        for index in 0..<self.cards.count {
            if self.cards[index].id == of.id {
                return index
            }
        }
        
        return 0 //TODO: bogus!
    }
    
    init (numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card( content: content, id: pairIndex * 2 ))
            cards.append(Card( content: content, id: pairIndex * 2 + 1 ))

        }
    }
    
    struct Card: Identifiable{
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
 
