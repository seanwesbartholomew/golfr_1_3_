//
//  ScorecardStore.swift
//  golfr_1_3_
//
//  Created by Sean Bartholomew on 7/18/23.
//

import SwiftUI

@MainActor
class ScorecardStore: ObservableObject {
    @Published var scorecards: [Scorecard] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        .appendingPathComponent("scorecards.data")
    }
    
    func load() async throws {
        let task = Task<[Scorecard], Error> {
            let fileURL = try Self.fileURL()
            guard let data = try? Data(contentsOf: fileURL) else {
                return []
            }
            let some_scorecards = try JSONDecoder().decode([Scorecard].self, from: data)
            return some_scorecards
        }
        let scorecards = try await task.value
        self.scorecards = scorecards
    }
    
    func save(scorecards: [Scorecard]) async throws {
        let task = Task {
            let data = try JSONEncoder().encode(scorecards)
            let outfile = try Self.fileURL()
            try data.write(to: outfile)
        }
        _ = try await task.value
    }
}
