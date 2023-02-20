//
//  SectionList.swift
//  ytat
//
//  Created by Isaac Johnson on 2/18/23.
//

import Foundation

//MARK: - SectionList
struct SectionList: Decodable {
    var sectionListRenderer: SectionListRenderer
}

struct SectionListRenderer: Decodable {
    var contents: [Shelf]
    var continuations: [Continuation]?
}

//MARK: - Basic Items
// HeaderRenderer
struct HeaderRenderer: Decodable {
    var shelfHeaderRenderer: ShelfHeaderRenderer
}

// Continuation
struct Continuation: Decodable {
    var nextContinuationData: NextContinuationData
}

struct NextContinuationData: Decodable {
    var continuation: String
}

// Text
struct CText: Decodable {
    var simpleText: String?
    var runs: [CTextRun]?
}

struct CTextRun: Decodable {
    var text: String?
}

// Badge
struct CBadge: Decodable {
    var metadataBadgeRenderer: TileMetadataBadgeRenderer
}
