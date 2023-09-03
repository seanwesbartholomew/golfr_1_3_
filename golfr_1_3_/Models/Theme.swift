//
//  Theme.swift
//  golfr
//
//  Created by Sean Bartholomew on 6/13/23.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable, Codable {
    case golfr_green
    case golfr_tan
    
    
    var accentColor: Color {
        switch self {
        case .golfr_green: return .white
        case .golfr_tan: return .black
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
    var name: String {
        rawValue.capitalized
    }
    var id: String {
        name
    }
}


