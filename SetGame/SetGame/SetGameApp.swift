//
//  SetGameApp.swift
//  SetGame
//
//  Created by Felipe Araujo on 21/05/21.
//

import SwiftUI

@main
struct SetGameApp: App {
    @StateObject var viewModel = ClassicSetGame(cards: GeometricCard.generateAll())
    
    var body: some Scene {
        WindowGroup {
            ContentView(game: viewModel)
        }
    }
}
