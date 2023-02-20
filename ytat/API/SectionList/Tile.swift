//
//  Tile.swift
//  ytat
//
//  Created by Isaac Johnson on 2/18/23.
//

import Foundation

//MARK: - Tile
struct Tile: Decodable, Identifiable {
    var id: UUID = UUID()
    var tileRenderer: TileRenderer?
    
    private enum CodingKeys: String, CodingKey {
        case tileRenderer
    }
}

struct TileRenderer: Decodable {
    var style: String = ""
    var contentType: String = ""
    var contentId: String = ""

    var header: TileHeader
    var metadata: TileMetadata
}

//MARK: - Header
struct TileHeader: Decodable {
    var tileHeaderRenderer: TileHeaderRenderer
}

struct TileHeaderRenderer: Decodable {
    var thumbnail: TileThumbnail
    var thumbnailOverlays: [Dictionary<String, TileThumbnailOverlay>]?
}

struct TileThumbnail: Decodable {
    var thumbnails: [TileThumbnailItem]
}

struct TileThumbnailItem: Decodable {
    var url: String
    var width: Int?
    var height: Int?
}

struct TileThumbnailOverlay: Decodable {
    var text: CText
    var style: String
}

//MARK: - Metadata
//todo add badge
struct TileMetadata: Decodable {
    var tileMetadataRenderer: TileMetadataRenderer
}

struct TileMetadataRenderer: Decodable {
    var title: CText
    var lines: [TileLine]?
}

struct TileLine: Decodable, Identifiable {
    var id: UUID = UUID()
    var lineRenderer: TileLineRenderer
    
    private enum CodingKeys: String, CodingKey {
        case lineRenderer
    }
}

struct TileLineRenderer: Decodable {
    var items: [TileLineItem]
}

struct TileLineItem: Decodable, Identifiable {
    var id: UUID = UUID()
    var lineItemRenderer: TileLineItemRenderer
    
    private enum CodingKeys: String, CodingKey {
        case lineItemRenderer
    }
}

struct TileLineItemRenderer: Decodable {
    var text: CText?
    var badge: CBadge?
}

struct TileMetadataBadgeRenderer: Decodable {
    var style: String
    var label: String
}
