//
//  golfr_1_3_App.swift
//  golfr_1_3_
//
//  Created by Sean Bartholomew on 7/18/23.
//

import SwiftUI

@main
struct golfr_1_3_App: App {
    @StateObject private var store = ScorecardStore()
    
    var body: some Scene {
        WindowGroup {
            MainMenuView(scorecards: $store.scorecards) {
                Task {
                    do {
                        try await store.save(scorecards: store.scorecards)
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
            }
            .task {
                do {
                    try await store.load()
                } catch {
                    fatalError(error.localizedDescription)
                }
            }
        }
    }
}

