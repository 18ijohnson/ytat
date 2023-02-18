//
//  SearchResponse.swift
//  ytat
//
//  Created by Isaac Johnson on 2/17/23.
//

import Foundation

//MARK: - SearchResponse
struct SearchResponse: Decodable {
    let estimatedResults: String?
    let contents: SearchContents?
}

struct SearchContents: Decodable {
    var sectionListRenderer: SearchSectionListRenderer?
}

struct SearchContentItem: Decodable, Identifiable {
    var id: UUID? = UUID()
    var shelfRenderer: SearchShelfRenderer?
}

struct SearchContent: Decodable {
    var horizontalListRenderer: SearchHorizontalListRenderer?
}

struct SearchTileHeader: Decodable {
    var tileHeaderRenderer: SearchTileHeaderRenderer?
}

//MARK: - Renderers
//MARK: Horizontal List Renderer
struct SearchHorizontalListRenderer: Decodable {
    var items: [SearchItem]?
    var continuations: [SearchContinuation]?
}

//MARK: Section List Renderer
struct SearchSectionListRenderer: Decodable {
    var contents: [SearchContentItem]?
}

//MARK: Shelf Renderer
struct SearchShelfRenderer: Decodable {
    var headerRenderer: SearchHeaderRenderer?
    var content: SearchContent?
}

//MARK: Header Renderer
struct SearchHeaderRenderer: Decodable {
    var shelfHeaderRenderer: SearchShelfHeaderRenderer?
}

struct SearchShelfHeaderRenderer: Decodable {
    var title: SearchTitle?
}

//MARK: Tile Renderer
struct SearchTileRenderer: Decodable {
    var style: String?
    var contentType: String?
    
    var header: SearchTileHeader?
    var metadata: SearchMetadata?
    var onSelectCommand: SearchOnSelectCommand?
}

struct SearchTileHeaderRenderer: Decodable {
    var thumbnail: SearchThumbnail?
    var thumbnailOverlays: [SearchThumbnailOverlay]?
}

struct SearchTileMetadataRenderer: Decodable {
    var title: SearchTitle?
    var lines: [SearchLine]?
}

struct SearchMetadataBadgeRenderer: Decodable {
    var style: String?
    var label: String?
}

//MARK: Line Renderer
struct SearchLineRenderer: Decodable {
    var wrap: Bool?
    var items: [SearchItem]?
}

struct SearchLineItemRenderer: Decodable {
    var text: SearchText?
    var badge: SearchBadge?
}

//MARK: - Basic Items
//MARK: Title
struct SearchTitle: Decodable {
    var simpleText: String?
}

//MARK: Text
struct SearchText: Decodable {
    var simpleText: String?
}

//MARK: Item
struct SearchItem: Decodable {
    var tileRenderer: SearchTileRenderer?
    var lineItemRenderer: SearchLineItemRenderer?
}

//MARK: Continuation
struct SearchContinuation: Decodable {
    var nextContinuationData: SearchNextContinuationData?
}

struct SearchNextContinuationData: Decodable {
    var continuation: String?
}

//MARK: Metadata
struct SearchMetadata: Decodable {
    var tileMetadataRenderer: SearchTileMetadataRenderer?
}

//MARK: Line
struct SearchLine: Decodable {
    var lineRenderer: SearchLineRenderer?
}

//MARK: Thumbnail
struct SearchThumbnail: Decodable {
    var thumbnails: [SearchThumbnailItem]?
}

struct SearchThumbnailItem: Decodable {
    var url: String?
    var width: Int?
    var height: Int?
}

struct SearchThumbnailOverlay: Decodable {
    var thumbnailOverlayTimeStatusRenderer: SearchThumbnailOverlayTimeStatusRenderer?
}

struct SearchThumbnailOverlayTimeStatusRenderer: Decodable {
    var text: SearchText?
    var style: String?
}

//MARK: Badge
struct SearchBadge: Decodable {
    var metadataBadgeRenderer: SearchMetadataBadgeRenderer?
}

struct SearchOnSelectCommand: Decodable {
    var watchEndpoint: SearchWatchEndpoint?
}

struct SearchWatchEndpoint: Decodable {
    var videoId: String
}
