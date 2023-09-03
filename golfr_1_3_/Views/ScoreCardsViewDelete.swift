//
//  ContentView.swift
//  golfr_1_3_
//
//  Created by Sean Bartholomew on 7/18/23.
//

import SwiftUI

struct ScorecardsViewDelete: View {
    
    @Binding var scorecards: [Scorecard]
    @State private var isPresentingNewScorecardView = false
    
    let saveAction: () -> Void
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing:-20){
                    ForEach($scorecards) { $ourScorecard in
                        NavigationLink(destination: RemoveCardView(scorecard: $ourScorecard, scorecards: $scorecards, saveAction: saveAction)) {
                            HStack {
                                Image(systemName: "minus.circle.fill")
                                    .foregroundColor(Color.red)
                                CardView(scorecard: $ourScorecard)
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Scorecards")
            .toolbar {
                
//                NavigationLink {
//                    NewCardView(scorecards: $scorecards, saveAction: saveAction)
//                } label: {
//                    Label("New Scorecard", systemImage: "rectangle.stack.fill.badge.plus")
//                }
//                NavigationLink {
//                    NewCardView(scorecards: $scorecards, saveAction: saveAction)
//                } label: {
//                    Label("Edit Scorecard", systemImage: "tablecells.fill.badge.ellipsis")
//                }
            }
        }
    }
}

struct ScorecardsViewDelete_Previews: PreviewProvider {
    static var previews: some View {
        ScorecardsViewDelete(scorecards: .constant(Scorecard.sampleData), saveAction: {})
    }
}
