//
//  BrowseResponse.swift
//  ytat
//
//  Created by Isaac Johnson on 1/29/23.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let browseResponse = try? JSONDecoder().decode(BrowseResponse.self, from: jsonData)

import Foundation

// MARK: - BrowseResponse
struct BrowseResponse: Codable {
    var contents: Contents?
}

// MARK: - Contents
struct Contents: Codable {
    var tvBrowseRenderer: TvBrowseRenderer?
}

// MARK: - TvBrowseRenderer
struct TvBrowseRenderer: Codable {
    var content: TvBrowseRendererContent?
}

// MARK: - TvBrowseRendererContent
struct TvBrowseRendererContent: Codable {
    var tvSurfaceContentRenderer: TvSurfaceContentRenderer?
}

// MARK: - TvSurfaceContentRenderer
struct TvSurfaceContentRenderer: Codable {
    var content: TvSurfaceContentRendererContent?
}

// MARK: - TvSurfaceContentRendererContent
struct TvSurfaceContentRendererContent: Codable {
    var sectionListRenderer: SectionListRenderer?
}

// MARK: - SectionListRenderer
struct SectionListRenderer: Codable {
    var contents: [ContentElement]?
    var continuations: [Continuation]?
}

// MARK: - ContentElement
struct ContentElement: Codable {
    var shelfRenderer: ShelfRenderer?
}

// MARK: - ShelfRenderer
struct ShelfRenderer: Codable {
    var content: ShelfRendererContent?
    var headerRenderer: HeaderRenderer?
}

// MARK: - ShelfRendererContent
struct ShelfRendererContent: Codable {
    var horizontalListRenderer: HorizontalListRenderer?
}

// MARK: - HorizontalListRenderer
struct HorizontalListRenderer: Codable {
    var items: [HorizontalListRendererItem]?
    var continuations: [Continuation]?
}

// MARK: - Continuation
struct Continuation: Codable {
    var nextContinuationData: NextContinuationData?
}

// MARK: - NextContinuationData
struct NextContinuationData: Codable {
    var continuation: String?
}

// MARK: - HorizontalListRendererItem
struct HorizontalListRendererItem: Codable {
    var tileRenderer: TileRenderer?
    var gridButtonRenderer: GridButtonRenderer?
}

// MARK: - GridButtonRenderer
struct GridButtonRenderer: Codable {
    var title: ResponseText?
}

// MARK: - TileRenderer
struct TileRenderer: Codable {
    var header: Header?
    var metadata: Metadata?
    var onSelectCommand: OnSelectCommand?
}

// MARK: - Header
struct Header: Codable {
    var tileHeaderRenderer: TileHeaderRenderer?
}

// MARK: - TileHeaderRenderer
struct TileHeaderRenderer: Codable {
    var thumbnail: OnFocusThumbnailClass?
    var thumbnailOverlays: [ThumbnailOverlay]?
    var onFocusThumbnail: OnFocusThumbnailClass?
}

// MARK: - OnFocusThumbnailClass
struct OnFocusThumbnailClass: Codable {
    var thumbnails: [ThumbnailElement]?
}

// MARK: - ThumbnailElement
struct ThumbnailElement: Codable {
    var url: String?
    var width, height: Int?
}

// MARK: - ThumbnailOverlay
struct ThumbnailOverlay: Codable {
    var thumbnailOverlayTimeStatusRenderer: ThumbnailOverlayTimeStatusRenderer?
}

// MARK: - ThumbnailOverlayTimeStatusRenderer
struct ThumbnailOverlayTimeStatusRenderer: Codable {
    var text: TextClass?
}

// MARK: - TextClass
struct TextClass: Codable {
    var simpleText: String?
}

// MARK: - Metadata
struct Metadata: Codable {
    var tileMetadataRenderer: TileMetadataRenderer?
}

// MARK: - TileMetadataRenderer
struct TileMetadataRenderer: Codable {
    var title: TextClass?
    var lines: [Line]?
}

// MARK: - Line
struct Line: Codable {
    var lineRenderer: LineRenderer?
}

// MARK: - LineRenderer
struct LineRenderer: Codable {
    var items: [LineRendererItem]?
}

// MARK: - LineRendererItem
struct LineRendererItem: Codable {
    var lineItemRenderer: LineItemRenderer
}

// MARK: - LineItemRenderer
struct LineItemRenderer: Codable {
    var badge: Badge?
    var text: ResponseText?
}

// MARK: - Badge
struct Badge: Codable {
    var metadataBadgeRenderer: MetadataBadgeRenderer?
}

// MARK: - MetadataBadgeRenderer
struct MetadataBadgeRenderer: Codable {
    var style, label: String?
}

// MARK: - ResponseText
struct ResponseText: Codable {
    var simpleText: String?
    var runs: [Run]?
}

// MARK: - Run
struct Run: Codable {
    var text: String?
}

// MARK: - OnSelectCommand
struct OnSelectCommand: Codable {
    var commandExecutorCommand: CommandExecutorCommand?
    var watchEndpoint: WatchEndpoint?
}

// MARK: - CommandExecutorCommand
struct CommandExecutorCommand: Codable {
    var commands: [Command]?
}

// MARK: - Command
struct Command: Codable {
    var watchEndpoint: WatchEndpoint?
}

// MARK: - WatchEndpoint
struct WatchEndpoint: Codable {
    var videoID: String?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
    }
}

// MARK: - HeaderRenderer
struct HeaderRenderer: Codable {
    var shelfHeaderRenderer: ShelfHeaderRenderer?
}

// MARK: - ShelfHeaderRenderer
struct ShelfHeaderRenderer: Codable {
    var title: ShelfHeaderRendererTitle?
}

// MARK: - ShelfHeaderRendererTitle
struct ShelfHeaderRendererTitle: Codable {
    var runs: [Run]?
}
