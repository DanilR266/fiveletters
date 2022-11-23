//
//  fivelettersApp.swift
//  fiveletters
//
//  Created by Данила on 17.11.2022.
//

import SwiftUI

@main
struct fivelettersApp: App {
    @State var g: String = "7"
    var body: some Scene {
        WindowGroup {
            StartGame(letter: $g)
        }
    }
}
