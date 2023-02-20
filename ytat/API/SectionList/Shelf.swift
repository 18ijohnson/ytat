//
//  Shelf.swift
//  ytat
//
//  Created by Isaac Johnson on 2/18/23.
//

import Foundation

//MARK: - Shelf
struct Shelf: Decodable, Identifiable {
    var id: UUID = UUID()
    var shelfRenderer: ShelfRenderer
    
    private enum CodingKeys: String, CodingKey {
        case shelfRenderer
    }
}

struct ShelfRenderer: Decodable {
    var headerRenderer: HeaderRenderer
    var content: ShelfContent
}

struct ShelfHeaderRenderer: Decodable {
    var title: CText?
}

struct ShelfContent: Decodable {
    var horizontalListRenderer: ShelfHorizontalListRenderer
}

struct ShelfHorizontalListRenderer: Decodable {
    var items: [Tile]
    var continuations: [Continuation]?
}




