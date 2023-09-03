//
//  Scorecard.swift
//  golfr_1_3_
//
//  Created by Sean Bartholomew on 7/18/23.
//

import Foundation


struct Scorecard: Identifiable, Codable, Equatable {
    var id: UUID
    var isSelected: Bool = false
    var endOverlap: Bool = false
    var course: String
    var city: String
    var state: String
    var full_18: Bool
    var par: Int
    var score: Int
    //var holes: 
    var date: String
    var theme: Theme
    
    init(id: UUID = UUID(), course: String, city: String, state: String, full_18: Bool, par: Int, score: Int, date: String, theme: Theme) {
        self.id = id
        self.course = course
        self.city = city
        self.state = state
        self.full_18 = full_18
        self.par = par
        self.score = score
        self.date = date
        self.theme = theme
    }
}

extension Scorecard {
    static var emptyScorecard: Scorecard {
        Scorecard(course: "Course Name",
                  city: "City",
                  state: "State",
                  full_18: true,
                  par: 0,
                  score: 0,
                  date: "MM/DD/YYYY",
                  theme: .golfr_green)
    }
}

extension Scorecard {
    static let sampleData: [Scorecard] =
    [
        Scorecard (
            course: "Pine Valley Country Club",
            city: "Pine Valley",
            state: "NJ",
            full_18: true,
            par: 72,
            score: 75,
            date: "01/01/2001",
            theme: .golfr_green),
        Scorecard (
            course: "Cypress Point Country Club",
            city: "Pebble Beach",
            state: "CA",
            full_18: true,
            par: 72,
            score: 69,
            date: "01/01/2001",
            theme: .golfr_tan),
        Scorecard (
            course: "Shinnecock Hills Country Club",
            city: "Southampton",
            state: "NY",
            full_18: true,
            par: 72,
            score: 62,
            date: "01/01/2001",
            theme: .golfr_green),
        Scorecard (
            course: "National Golf Links of America",
            city: "Southampton",
            state: "NY",
            full_18: true,
            par: 72,
            score: 75,
            date: "01/01/2001",
            theme: .golfr_tan),
        Scorecard (
            course: "Oakmont Country Club",
            city: "Oakmont",
            state: "PA",
            full_18: true,
            par: 72,
            score: 82,
            date: "01/01/2001",
            theme: .golfr_green),
        Scorecard (
            course: "Sand Hills Country Club",
            city: "Mullen",
            state: "NE",
            full_18: true,
            par: 72,
            score: 72,
            date: "01/01/2001",
            theme: .golfr_tan),
        Scorecard (
            course: "Merion Country Club",
            city: "Ardmore",
            state: "PA",
            full_18: true,
            par: 72,
            score: 73,
            date: "01/01/2001",
            theme: .golfr_green),
        Scorecard (
            course: "Fishers Island Country Club",
            city: "Fishers Island",
            state: "NY",
            full_18: true,
            par: 72,
            score: 79,
            date: "01/01/2001",
            theme: .golfr_tan),
        Scorecard (
            course: "Los Angeles Country Club North",
            city: "Los Angeles",
            state: "CA",
            full_18: true,
            par: 72,
            score: 70,
            date: "01/01/2001",
            theme: .golfr_green),
        Scorecard (
            course: "Pebble Beach Country Club",
            city: "Pebble Beach",
            state: "CA",
            full_18: true,
            par: 72,
            score: 78,
            date: "01/01/2001",
            theme: .golfr_tan),
        Scorecard (
            course: "Pinehurst Country Club",
            city: "Village of Pinehurst",
            state: "NC",
            full_18: true,
            par: 72,
            score: 76,
            date: "01/01/2001",
            theme: .golfr_green),
        Scorecard (
            course: "Chicago GC",
            city: "Wheaton",
            state: "IL",
            full_18: true,
            par: 72,
            score: 68,
            date: "01/01/2001",
            theme: .golfr_tan),
        Scorecard (
            course: "Riviera Country Club",
            city: "Pacific Palisades",
            state: "CA",
            full_18: true,
            par: 72,
            score: 75,
            date: "01/01/2001",
            theme: .golfr_green),
        Scorecard (
            course: "Friar's Head Country Club",
            city: "Baiting Hollow",
            state: "NY",
            full_18: true,
            par: 72,
            score: 75,
            date: "01/01/2001",
            theme: .golfr_tan),
        Scorecard (
            course: "Winged Foot Country Club",
            city: "Mamaroneck",
            state: "NY",
            full_18: true,
            par: 72,
            score: 75,
            date: "01/01/2001",
            theme: .golfr_green),
        Scorecard (
            course: "Pacific Dunes",
            city: "Bandon",
            state: "OR",
            full_18: true,
            par: 72,
            score: 75,
            date: "01/01/2001",
            theme: .golfr_tan),
        Scorecard (
            course: "Augusta National",
            city: "Augusta",
            state: "GA",
            full_18: true,
            par: 72,
            score: 75,
            date: "01/01/2001",
            theme: .golfr_green),
        
    ]
}
        
