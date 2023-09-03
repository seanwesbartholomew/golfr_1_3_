//
//  MainMenuView.swift
//  golfr_1_3_
//
//  Created by Sean Bartholomew on 7/16/23.
//

import SwiftUI
struct MainMenuView: View {
    
    @Environment(\.scenePhase) private var scenePhase
    @Binding var scorecards: [Scorecard]
    @State private var showingScorecards = false
    @State private var showingStats = false
    @State private var showingSocials = false
    
    let saveAction: ()->Void
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                ScorecardsView(scorecards: $scorecards, saveAction: saveAction)
            } label: {
                Label("Scorecards", systemImage: "tablecells")
                    .font(.title3)
            }
            NavigationLink {
                NewCardView(scorecards: $scorecards, saveAction: saveAction)
            } label: {
                Label("New Scorecard", systemImage: "tablecells")
                    .font(.title3)
            }
            .navigationTitle("main(dev)")
        }
        .onChange(of: scenePhase) { phase in
            if phase == .inactive { saveAction() }
        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView(scorecards: .constant(Scorecard.sampleData), saveAction: {})
    }
}
