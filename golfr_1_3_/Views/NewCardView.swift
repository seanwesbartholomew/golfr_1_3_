//
//  NewScorecard.swift
//  golfr_1_3_
//
//  Created by Sean Bartholomew on 7/18/23.
//
// TO DO: THINK ABOUT HOW THIS WILL LOOK

//
//  ScoreCardView.swift
//  golfr
//
//  Created by Sean Bartholomew on 6/20/23.
//

import SwiftUI


struct NewCardView: View {
    @Environment(\.scenePhase) private var scenePhase
    
    @State var newScorecard: Scorecard = Scorecard.emptyScorecard
    @Binding var scorecards: [Scorecard]

    
    let saveAction: () -> Void
    
    var body: some View {
        
        VStack {
            // "title" H stack, this is what will be seen when cards are up, can take this from old game view partly.
            //-----------------------------------------------------------------------------
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    TextField (
                        "",
                        text: $newScorecard.course
                    )
                    .font(.title)
                    .foregroundColor(newScorecard.theme.accentColor)
                    TextField (
                        "",
                        text: $newScorecard.city
                    )
                    .font(.title)
                    .foregroundColor(newScorecard.theme.accentColor)
                    TextField (
                        "",
                        text: $newScorecard.state
                    )
                    .font(.title)
                    .foregroundColor(newScorecard.theme.accentColor)
                    TextField (
                        "",
                        text: $newScorecard.date
                    )
                    .font(.headline)
                    .foregroundColor(newScorecard.theme.accentColor)
                }
                // -------------------------------------------------------------------
                Spacer()
                // -------------------------------------------------------------------
                HStack {
                    Label("\(newScorecard.par)", systemImage:"p.square.fill")
                        .font(.title2)
                    Label("\(newScorecard.score)", systemImage: "figure.golf")
                        .font(.title2)
                }
                .padding()
                .foregroundColor(newScorecard.theme.accentColor)
                
                // ----------------------------------------------------------------
                
            }
            .padding()
            Button(action: {
                scorecards.append(newScorecard)
            }) {
                Label("Save Scorecard", systemImage: "square.and.arrow.down.on.square.fill")
                    .foregroundColor(newScorecard.theme.accentColor)
            }
            Spacer()
            
        }
        .background(newScorecard.theme.mainColor)
        .onChange(of: scenePhase) { phase in
            if phase == .inactive { saveAction() }
        }
    }
    
}
    
struct NewCardView_Preiviews: PreviewProvider {
    
    static var previews: some View {
        NewCardView(scorecards: .constant(Scorecard.sampleData), saveAction: {})
    }
}

