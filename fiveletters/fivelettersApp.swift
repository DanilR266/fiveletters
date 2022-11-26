//
//  fivelettersApp.swift
//  fiveletters
//
//  Created by Данила on 17.11.2022.
//

import SwiftUI

@main
struct fivelettersApp: App {
    @StateObject var dm = Model()
    var body: some Scene {
        WindowGroup {
            AppContentView()
                .environmentObject(Model())
        }
    }
}
