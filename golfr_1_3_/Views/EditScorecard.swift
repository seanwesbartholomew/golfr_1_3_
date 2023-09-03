//
//  EditScorecard.swift
//  golfr_1_3_
//
//  Created by Sean Bartholomew on 7/19/23.
//

import SwiftUI

struct EditScorecard: View {
    @Binding var scorecard: Scorecard
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct EditScorecard_Previews: PreviewProvider {
    static var previews: some View {
        EditScorecard(scorecard: .constant(Scorecard.emptyScorecard))
    }
}
