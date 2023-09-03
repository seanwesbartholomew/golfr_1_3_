//
//  ScoreCardView.swift
//  golfr
//
//  Created by Sean Bartholomew on 6/20/23.
//

import SwiftUI
import Swift


struct RemoveCardView: View {
    @Environment(\.scenePhase) private var scenePhase
    
    @Binding var scorecard: Scorecard
    @Binding var scorecards: [Scorecard]
    
    let saveAction: () -> Void
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(scorecard.theme.mainColor)
                .shadow(radius: 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(scorecard.isSelected ? Color.gray : Color.clear, lineWidth: 2)
                )
            // this vstack contains all written content for the most part on the card. the always visible hstack portion and then the hidden unless selected bottom version.
            VStack {
                // "title" H stack, this is what will be seen when cards are up, can take this from old game view partly.
                //-----------------------------------------------------------------------------
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("REMOVE : ")
                            .font(.title)
                            .foregroundColor(Color.red)
                            .lineLimit(1)
                            .truncationMode(.tail)
                        Text(scorecard.course)
                            .font(.title)
                            .foregroundColor(scorecard.theme.accentColor)
                            .lineLimit(1)
                            .truncationMode(.tail)
                        Text(scorecard.city + ", " + scorecard.state)
                            .font(.subheadline)
                            .foregroundColor(scorecard.theme.accentColor)
                            .lineLimit(1)
                            .truncationMode(.tail)
                        Text(scorecard.date)
                            .font(.subheadline)
                            .foregroundColor(scorecard.theme.accentColor)
                            .lineLimit(1)
                            .truncationMode(.tail)
                        Text("Confirm ?")
                            .font(.title)
                            .foregroundColor(Color.red)
                            .lineLimit(1)
                            .truncationMode(.tail)
                        HStack {
                            Button(action: {
                                if (scorecards.contains([scorecard])) {
                                    scorecards.remove(at: (scorecards.firstIndex(of: scorecard)!))
                                }
                            }) {
                                Label("Delete", systemImage: "minus.rectangle.fill")
                                    .foregroundColor(scorecard.theme.accentColor)
                                    .font(.title2)
                            }
                        }
                    }
                    .padding()
                    // -------------------------------------------------------------------
                    Spacer()
                    // -------------------------------------------------------------------
                    
                    // ----------------------------------------------------------------
                    
                }
                HStack {
                    
                    Label("\(scorecard.par)", systemImage:"p.square.fill")
                        .font(.title2)
                    Label("\(scorecard.score)", systemImage: "figure.golf")
                        .font(.title2)
                    Spacer()
                }
                .padding()
                .foregroundColor(scorecard.theme.accentColor)
                Spacer()
            }
            .onChange(of: scenePhase) { phase in
                if phase == .inactive { saveAction() }
            }
        }
        //.frame(height: 400)
        .foregroundColor(scorecard.theme.mainColor)
        //.background(scorecard.theme.mainColor)
    }
}

struct RemoveCard_Preiviews: PreviewProvider {
    static var scorecard = Scorecard (
        course: "National Golf Links of America",
        city: "Village of Pinehurst",
        state: "GA",
        full_18: true,
        par: 72,
        score: 75,
        date: "01/01/2001",
        theme: .golfr_green)
    static var previews: some View {
        RemoveCardView(scorecard: .constant(scorecard), scorecards: .constant(Scorecard.sampleData), saveAction: {})
    }
}

