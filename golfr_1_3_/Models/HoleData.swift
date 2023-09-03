//
//  HoleData.swift
//  golfr_1_3_
//
//  Created by Sean Bartholomew on 7/27/23.
//

import Foundation

struct HoleData: Identifiable, Codable {
    var id: UUID
    var holeNumber: Int
    var strokes: Int
    var par: Int
    
    init(id: UUID = UUID(), holeNumber: Int, strokes: Int, par: Int) {
        self.id = id
        self.holeNumber = holeNumber
        self.strokes = strokes
        self.par = par
    }
}

extension HoleData {
    static var emptyHole: HoleData {
        HoleData(holeNumber: 0, strokes: 0, par: 0)
    }
}
