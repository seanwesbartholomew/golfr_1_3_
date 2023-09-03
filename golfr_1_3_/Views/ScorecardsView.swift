//
//  ContentView.swift
//  golfr_1_3_
//
//  Created by Sean Bartholomew on 7/18/23.
//

import SwiftUI

struct ScorecardsView: View {
    
    @Binding var scorecards: [Scorecard]
    @State private var isPresentingNewScorecardView = false
    
    let saveAction: () -> Void
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing:-20){
                    ForEach($scorecards) { $ourScorecard in
                        NavigationLink(destination: CardView(scorecard: $ourScorecard)) {
                            CardView(scorecard: $ourScorecard)
                        }
                        
                    }
                }
                .padding()
            }
            .navigationTitle("Scorecards")
            .toolbar {
                
                NavigationLink {
                    NewCardView(scorecards: $scorecards, saveAction: saveAction)
                } label: {
                    Label("New Scorecard", systemImage: "rectangle.stack.fill.badge.plus")
                }
                NavigationLink {
                    ScorecardsViewDelete(scorecards: $scorecards, saveAction: saveAction)
                } label: {
                    Label("Edit Scorecard", systemImage: "tablecells.fill.badge.ellipsis")
                }
            }
        }
    }
}

struct Scorecard_Previews: PreviewProvider {
    static var previews: some View {
        ScorecardsView(scorecards: .constant(Scorecard.sampleData), saveAction: {})
    }
}
