//
//  EmojiMomoryGame.swift
//  memorize
//
//  Created by Edinelson Lima on 07/06/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
//  MARK: - create card with one par
    private static func createMemoryGame() -> MemoryGame<String>{
        let emojis = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count){ pairIndex in
           emojis[pairIndex]
       }
    }
    
//  MARK: - Access to the Model 
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
//  MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
 
 
