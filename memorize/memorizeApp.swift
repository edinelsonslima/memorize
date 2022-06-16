//
//  memorizeApp.swift
//  memorize
//
//  Created by Edinelson Lima on 05/06/22.
//

import SwiftUI

@main
struct memorizeApp: App {
    var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
