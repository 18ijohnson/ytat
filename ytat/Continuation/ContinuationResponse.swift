//
//  ContinuationResponse.swift
//  ytat
//
//  Created by Isaac Johnson on 3/4/23.
//

import Foundation

struct ContinuationResponse: Decodable, Identifiable {
    var id: UUID = UUID()
    var continuationContents: ContinuationContents
    
    private enum CodingKeys: String, CodingKey {
        case continuationContents
    }
}

struct ContinuationContents: Decodable {
    var horizontalListContinuation: HorizontalListContinuation
}

struct HorizontalListContinuation: Decodable {
    var items: [Tile]
    var continuations: [Continuation]?
}
