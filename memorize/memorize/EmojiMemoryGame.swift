//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Felipe Araujo on 02/08/20.
//  Copyright © 2020 Felipe Araujo. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    //private(set) usado para ver o parametro da classe por outras classes
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String>{
        let emojis = ["👻","🎃","🕷","😀","🤨","🥰","😡","🤠","👨🏻‍💻"]
        //let randomInt = Int.random(in: 5..<6) Homework  - feito
        
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK: - Access to the model
    
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    // MARK: -Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        //objectWillChange.send()
        model.choose(card: card)
    }
    
    func resetGame(){
        model = EmojiMemoryGame.createMemoryGame()
    }
}
