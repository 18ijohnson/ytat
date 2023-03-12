//
//  VideoNextResponse.swift
//  ytat
//
//  Created by Isaac Johnson on 3/11/23.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let VideoNextResponse = try? JSONDecoder().decode(VideoNextResponse.self, from: jsonData)

import Foundation

// MARK: - VideoNextResponse
struct VideoNextResponse: Codable {
    let contents: VNextContents?
    let playerOverlays: VNextPlayerOverlays?
    let transportControls: VNextTransportControls?
}

// MARK: - VNextContents
struct VNextContents: Codable {
    let singleColumnWatchNextResults: VNextSingleColumnWatchNextResults?
}

// MARK: - VNextSingleColumnWatchNextResults
struct VNextSingleColumnWatchNextResults: Codable {
    let results: VNextSingleColumnWatchNextResultsResults?
    let autoplay: VNextSingleColumnWatchNextResultsAutoplay?
    let pivot: VNextPivot?
}

// MARK: - VNextSingleColumnWatchNextResultsAutoplay
struct VNextSingleColumnWatchNextResultsAutoplay: Codable {
    let autoplay: VNextAutoplayAutoplay?
}

// MARK: - VNextAutoplayAutoplay
struct VNextAutoplayAutoplay: Codable {
    let sets: [VNextSet]?
    let title: VNextCancelTextClass?
    let countDownSecs: Int?
    let replayVideoRenderer: VNextReplayVideoRenderer?
}

// MARK: - VNextReplayVideoRenderer
struct VNextReplayVideoRenderer: Codable {
    let pivotVideoRenderer: VNextPivotVideoRenderer?
}

// MARK: - VNextPivotVideoRenderer
struct VNextPivotVideoRenderer: Codable {
    let videoID: String?
    let thumbnail: VNextBackground?
    let title: VNextCancelTextClass?
    let shortBylineText: VNextShortBylineText?
    let viewCountText, lengthText: VNextShortViewCountTextClass?
    let navigationEndpoint: VNextPivotVideoRendererNavigationEndpoint?
    let trackingParams: String?
    let overlayIcon: VNextIcon?
    let overlayLabel: VNextCancelTextClass?
    let thumbnailOverlays: [VNextThumbnailOverlay]?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case thumbnail, title, shortBylineText, viewCountText, lengthText, navigationEndpoint, trackingParams, overlayIcon, overlayLabel, thumbnailOverlays
    }
}

// MARK: - VNextShortViewCountTextClass
struct VNextShortViewCountTextClass: Codable {
    let accessibility: VNextShortViewCountTextAccessibilityData?
    let simpleText: String?
}

// MARK: - VNextShortViewCountTextAccessibilityData
struct VNextShortViewCountTextAccessibilityData: Codable {
    let accessibilityData: VNextAccessibilityDataAccessibility?
}

// MARK: - VNextAccessibilityDataAccessibility
struct VNextAccessibilityDataAccessibility: Codable {
    let label: String?
}

// MARK: - VNextPivotVideoRendererNavigationEndpoint
struct VNextPivotVideoRendererNavigationEndpoint: Codable {
    let clickTrackingParams: String?
    let watchEndpoint: VNextNavigationEndpointWatchEndpoint?
}

// MARK: - VNextNavigationEndpointWatchEndpoint
struct VNextNavigationEndpointWatchEndpoint: Codable {
    let videoID: String?
    let watchEndpointSupportedOnesieConfig: VNextWatchEndpointSupportedOnesieConfig?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case watchEndpointSupportedOnesieConfig
    }
}

// MARK: - VNextWatchEndpointSupportedOnesieConfig
struct VNextWatchEndpointSupportedOnesieConfig: Codable {
    let html5PlaybackOnesieConfig: VNextHtml5PlaybackOnesieConfig?
}

// MARK: - VNextHtml5PlaybackOnesieConfig
struct VNextHtml5PlaybackOnesieConfig: Codable {
    let commonConfig: VNextCommonConfig?
}

// MARK: - VNextCommonConfig
struct VNextCommonConfig: Codable {
    let url: String?
}

// MARK: - VNextIcon
struct VNextIcon: Codable {
    let iconType: String?
}

// MARK: - VNextCancelTextClass
struct VNextCancelTextClass: Codable {
    let simpleText: String?
}

// MARK: - VNextShortBylineText
struct VNextShortBylineText: Codable {
    let runs: [VNextShortBylineTextRun]?
}

// MARK: - VNextShortBylineTextRun
struct VNextShortBylineTextRun: Codable {
    let text: String?
    let navigationEndpoint: VNextRunNavigationEndpoint?
}

// MARK: - VNextRunNavigationEndpoint
struct VNextRunNavigationEndpoint: Codable {
    let clickTrackingParams: String?
    let browseEndpoint: VNextCommandBrowseEndpoint?
}

// MARK: - VNextCommandBrowseEndpoint
struct VNextCommandBrowseEndpoint: Codable {
    let browseID, canonicalBaseURL: String?

    enum CodingKeys: String, CodingKey {
        case browseID = "browseId"
        case canonicalBaseURL = "canonicalBaseUrl"
    }
}

// MARK: - VNextBackground
struct VNextBackground: Codable {
    let thumbnails: [VNextThumbnail]?
}

// MARK: - VNextThumbnail
struct VNextThumbnail: Codable {
    let url: String?
    let width, height: Int?
}

// MARK: - VNextThumbnailOverlay
struct VNextThumbnailOverlay: Codable {
    let thumbnailOverlayTimeStatusRenderer: VNextThumbnailOverlayTimeStatusRenderer?
}

// MARK: - VNextThumbnailOverlayTimeStatusRenderer
struct VNextThumbnailOverlayTimeStatusRenderer: Codable {
    let text: VNextShortViewCountTextClass?
    let style: VNextThumbnailOverlayTimeStatusRendererStyle?
}

enum VNextThumbnailOverlayTimeStatusRendererStyle: String, Codable {
    case styleDEFAULT = "DEFAULT"
    case styleLive = "LIVE"
}

// MARK: - VNextSet
struct VNextSet: Codable {
    let mode: String?
    let autoplayVideoRenderer: VNextAutoplayVideoRenderer?
    let nextVideoRenderer: VNextNextVideoRenderer?
}

// MARK: - VNextAutoplayVideoRenderer
struct VNextAutoplayVideoRenderer: Codable {
    let autonavEndpointRenderer: VNextAutonavEndpointRenderer?
}

// MARK: - VNextAutonavEndpointRenderer
struct VNextAutonavEndpointRenderer: Codable {
    let endpoint: VNextAutonavEndpointRendererEndpoint?
}

// MARK: - VNextAutonavEndpointRendererEndpoint
struct VNextAutonavEndpointRendererEndpoint: Codable {
    let watchEndpoint: VNextTarget?
}

// MARK: - VNextTarget
struct VNextTarget: Codable {
    let videoID: String?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
    }
}

// MARK: - VNextNextVideoRenderer
struct VNextNextVideoRenderer: Codable {
    let maybeHistoryEndpointRenderer: VNextMaybeHistoryEndpointRenderer?
}

// MARK: - VNextMaybeHistoryEndpointRenderer
struct VNextMaybeHistoryEndpointRenderer: Codable {
    let endpoint: VNextMaybeHistoryEndpointRendererEndpoint?
    let useNextHistoryItem: Bool?
    let item: VNextMaybeHistoryEndpointRendererItem?
    let trackingParams: String?
}

// MARK: - VNextMaybeHistoryEndpointRendererEndpoint
struct VNextMaybeHistoryEndpointRendererEndpoint: Codable {
    let clickTrackingParams: String?
    let watchEndpoint: VNextEndpointWatchEndpoint?
}

// MARK: - VNextEndpointWatchEndpoint
struct VNextEndpointWatchEndpoint: Codable {
    let videoID, params: String?
    let watchEndpointSupportedOnesieConfig: VNextWatchEndpointSupportedOnesieConfig?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case params, watchEndpointSupportedOnesieConfig
    }
}

// MARK: - VNextMaybeHistoryEndpointRendererItem
struct VNextMaybeHistoryEndpointRendererItem: Codable {
    let previewButtonRenderer: VNextPreviewButtonRenderer?
}

// MARK: - VNextPreviewButtonRenderer
struct VNextPreviewButtonRenderer: Codable {
    let title, subtitle: VNextCancelTextClass?
    let thumbnail: VNextBackground?
    let byline: VNextByline?
}

// MARK: - VNextByline
struct VNextByline: Codable {
    let runs: [VNextBylineRun]?
}

// MARK: - VNextBylineRun
struct VNextBylineRun: Codable {
    let text: String?
}

// MARK: - VNextPivot
struct VNextPivot: Codable {
    let sectionListRenderer: VNextSectionListRenderer?
}

// MARK: - VNextSectionListRenderer
struct VNextSectionListRenderer: Codable {
    let contents: [VNextSectionListRendererContent]?
}

// MARK: - VNextSectionListRendererContent
struct VNextSectionListRendererContent: Codable {
    let shelfRenderer: VNextShelfRenderer?
    let itemSectionRenderer: VNextPurpleItemSectionRenderer?
}

// MARK: - VNextPurpleItemSectionRenderer
struct VNextPurpleItemSectionRenderer: Codable {
    let contents: [VNextPurpleContent]?
    let trackingParams: String?
}

// MARK: - VNextPurpleContent
struct VNextPurpleContent: Codable {
    let horizontalButtonListRenderer: VNextHorizontalButtonListRenderer?
}

// MARK: - VNextHorizontalButtonListRenderer
struct VNextHorizontalButtonListRenderer: Codable {
    let items: [VNextHorizontalButtonListRendererItem]?
    let trackingParams: String?
}

// MARK: - VNextHorizontalButtonListRendererItem
struct VNextHorizontalButtonListRendererItem: Codable {
    let buttonRenderer: VNextItemButtonRenderer?
}

// MARK: - VNextItemButtonRenderer
struct VNextItemButtonRenderer: Codable {
    let isDisabled: Bool?
    let text: VNextCancelTextClass?
    let icon: VNextIcon?
    let trackingParams: String?
    let command: VNextDismissalCommandClass?
    let navigationEndpoint: VNextButtonRendererNavigationEndpoint?
}

// MARK: - VNextDismissalCommandClass
struct VNextDismissalCommandClass: Codable {
    let clickTrackingParams: String?
    let signalAction: VNextSignalAction?
}

// MARK: - VNextSignalAction
struct VNextSignalAction: Codable {
    let signal: VNextSignal?
}

enum VNextSignal: String, Codable {
    case closePopup = "CLOSE_POPUP"
    case openFilmstrip = "OPEN_FILMSTRIP"
    case popupBack = "POPUP_BACK"
    case toggleVideoInfo = "TOGGLE_VIDEO_INFO"
    case watchResetPivot = "WATCH_RESET_PIVOT"
}

// MARK: - VNextButtonRendererNavigationEndpoint
struct VNextButtonRendererNavigationEndpoint: Codable {
    let clickTrackingParams: String?
    let searchEndpoint: VNextSearchEndpoint?
    let browseEndpoint: VNextOnSelectCommandBrowseEndpoint?
}

// MARK: - VNextOnSelectCommandBrowseEndpoint
struct VNextOnSelectCommandBrowseEndpoint: Codable {
    let browseID: String?

    enum CodingKeys: String, CodingKey {
        case browseID = "browseId"
    }
}

// MARK: - VNextSearchEndpoint
struct VNextSearchEndpoint: Codable {
    let query: String?
}

// MARK: - VNextShelfRenderer
struct VNextShelfRenderer: Codable {
    let content: VNextShelfRendererContent?
    let trackingParams: String?
    let headerRenderer: VNextHeaderRenderer?
    let tvhtml5ShelfRendererType: String?
}

// MARK: - VNextShelfRendererContent
struct VNextShelfRendererContent: Codable {
    let horizontalListRenderer: VNextHorizontalListRenderer?
}

// MARK: - VNextHorizontalListRenderer
struct VNextHorizontalListRenderer: Codable {
    let items: [VNextHorizontalListRendererItem]?
    let trackingParams: String?
    let continuations: [VNextHorizontalListRendererContinuation]?
    let visibleItemCount: Int?
}

// MARK: - VNextHorizontalListRendererContinuation
struct VNextHorizontalListRendererContinuation: Codable {
    let nextContinuationData: VNextNextContinuationData?
    let reloadContinuationData: VNextReloadContinuationData?
}

// MARK: - VNextNextContinuationData
struct VNextNextContinuationData: Codable {
    let continuation, clickTrackingParams: String?
    let label: VNextByline?
}

// MARK: - VNextReloadContinuationData
struct VNextReloadContinuationData: Codable {
    let continuation, clickTrackingParams: String?
}

// MARK: - VNextHorizontalListRendererItem
struct VNextHorizontalListRendererItem: Codable {
    let tileRenderer: VNextTileRenderer?
}

// MARK: - VNextTileRenderer
struct VNextTileRenderer: Codable {
    let style: VNextTileRendererStyle?
    let header: VNextTileRendererHeader?
    let metadata: VNextTileRendererMetadata?
    let onSelectCommand: VNextOnSelectCommand?
    let trackingParams, contentID: String?
    let contentType: VNextContentType?
    let onFocusCommand: VNextTileRendererOnFocusCommand?
    let menu: VNextMenu?
    let onLongPressCommand: VNextOnLongPressCommand?

    enum CodingKeys: String, CodingKey {
        case style, header, metadata, onSelectCommand, trackingParams
        case contentID = "contentId"
        case contentType, onFocusCommand, menu, onLongPressCommand
    }
}

enum VNextContentType: String, Codable {
    case tileContentTypeChannel = "TILE_CONTENT_TYPE_CHANNEL"
    case tileContentTypeVideo = "TILE_CONTENT_TYPE_VIDEO"
    case tileContentTypePlaylist = "TILE_CONTENT_TYPE_PLAYLIST"
}

// MARK: - VNextTileRendererHeader
struct VNextTileRendererHeader: Codable {
    let tileHeaderRenderer: VNextTileHeaderRenderer?
    let richTextTileHeaderRenderer: VNextRichTextTileHeaderRenderer?
}

// MARK: - VNextRichTextTileHeaderRenderer
struct VNextRichTextTileHeaderRenderer: Codable {
    let title: VNextRichTextTileHeaderRendererTitle?
    let textContent: [VNextByline]?
    let content: [VNextRichTextTileHeaderRendererContent]?
}

// MARK: - VNextRichTextTileHeaderRendererContent
struct VNextRichTextTileHeaderRendererContent: Codable {
    let commentsEntryPointRenderer: VNextCommentsEntryPointRenderer?
    let chapterListPreviewRenderer: VNextChapterListPreviewRenderer?
}

// MARK: - VNextChapterListPreviewRenderer
struct VNextChapterListPreviewRenderer: Codable {
    let chapter: [VNextChapterListPreviewRendererChapter]?
}

// MARK: - VNextChapterListPreviewRendererChapter
struct VNextChapterListPreviewRendererChapter: Codable {
    let title, timeDescription: VNextCancelTextClass?
    let thumbnail: VNextBackground?
}

// MARK: - VNextCommentsEntryPointRenderer
struct VNextCommentsEntryPointRenderer: Codable {
    let authorThumbnail: VNextAuthorThumbnail?
    let authorText, contentText: VNextCancelTextClass?
    let trackingParams: String?
}

// MARK: - VNextAuthorThumbnail
struct VNextAuthorThumbnail: Codable {
    let thumbnails: [VNextThumbnail]?
    let accessibility: VNextShortViewCountTextAccessibilityData?
}

// MARK: - VNextRichTextTileHeaderRendererTitle
struct VNextRichTextTileHeaderRendererTitle: Codable {
    let simpleText: String?
    let runs: [VNextBylineRun]?
}

// MARK: - VNextTileHeaderRenderer
struct VNextTileHeaderRenderer: Codable {
    let thumbnail: VNextBackground?
    let thumbnailOverlays: [VNextThumbnailOverlay]?
}

// MARK: - VNextMenu
struct VNextMenu: Codable {
    let menuRenderer: VNextMenuRenderer?
}

// MARK: - VNextMenuRenderer
struct VNextMenuRenderer: Codable {
    let items: [VNextMenuRendererItem]?
    let trackingParams: String?
    let accessibility: VNextShortViewCountTextAccessibilityData?
}

// MARK: - VNextMenuRendererItem
struct VNextMenuRendererItem: Codable {
    let menuNavigationItemRenderer: VNextMenuNavigationItemRenderer?
}

// MARK: - VNextMenuNavigationItemRenderer
struct VNextMenuNavigationItemRenderer: Codable {
    let text: VNextByline?
    let navigationEndpoint: VNextMenuNavigationItemRendererNavigationEndpoint?
    let trackingParams: String?
}

// MARK: - VNextMenuNavigationItemRendererNavigationEndpoint
struct VNextMenuNavigationItemRendererNavigationEndpoint: Codable {
    let clickTrackingParams: String?
    let browseEndpoint: VNextOnSelectCommandBrowseEndpoint?
}

// MARK: - VNextTileRendererMetadata
struct VNextTileRendererMetadata: Codable {
    let tileMetadataRenderer: VNextTileMetadataRenderer?
}

// MARK: - VNextTileMetadataRenderer
struct VNextTileMetadataRenderer: Codable {
    let title: VNextCancelTextClass?
    let lines: [VNextLine]?
}

// MARK: - VNextLine
struct VNextLine: Codable {
    let lineRenderer: VNextLineRenderer?
}

// MARK: - VNextLineRenderer
struct VNextLineRenderer: Codable {
    let items: [VNextLineRendererItem]?
    let wrap: Bool?
}

// MARK: - VNextLineRendererItem
struct VNextLineRendererItem: Codable {
    let lineItemRenderer: VNextLineItemRenderer?
}

// MARK: - VNextLineItemRenderer
struct VNextLineItemRenderer: Codable {
    let text: VNextLineItemRendererText?
    let badge: VNextLineItemRendererBadge?
}

// MARK: - VNextLineItemRendererBadge
struct VNextLineItemRendererBadge: Codable {
    let metadataBadgeRenderer: VNextPurpleMetadataBadgeRenderer?
}

// MARK: - VNextPurpleMetadataBadgeRenderer
struct VNextPurpleMetadataBadgeRenderer: Codable {
    let style: VNextMetadataBadgeRendererStyle?
    let label: VNextLabel?
    let trackingParams: String?
}

enum VNextLabel: String, Codable {
    case new = "New"
    case the4K = "4K"
    case freeWithAds = "Free with ads"
    case fundraiser = "Fundraiser"
    case tvMA = "TV-MA"
    case tv14 = "TV-14"
    case tvPG = "TV-PG"
    case r = "R"
    case pg13 = "PG-13"
    case unrated = "Unrated"
    case pg = "PG"
    case g = "G"
    case the360 = "360°"
}

enum VNextMetadataBadgeRendererStyle: String, Codable {
    case badgeStyleTypeSimple = "BADGE_STYLE_TYPE_SIMPLE"
    case badgeStyleTypeYPC = "BADGE_STYLE_TYPE_YPC"
}

// MARK: - VNextLineItemRendererText
struct VNextLineItemRendererText: Codable {
    let runs: [VNextShortBylineTextRun]?
    let accessibility: VNextShortViewCountTextAccessibilityData?
    let simpleText: String?
}

// MARK: - VNextTileRendererOnFocusCommand
struct VNextTileRendererOnFocusCommand: Codable {
    let showHintCommand: VNextShowHintCommand?
}

// MARK: - VNextShowHintCommand
struct VNextShowHintCommand: Codable {
    let shouldShowHint: Bool?
}

// MARK: - VNextOnLongPressCommand
struct VNextOnLongPressCommand: Codable {
    let clickTrackingParams: String?
    let showMenuCommand: VNextShowMenuCommand?
}

// MARK: - VNextShowMenuCommand
struct VNextShowMenuCommand: Codable {
    let contentID: String?

    enum CodingKeys: String, CodingKey {
        case contentID = "contentId"
    }
}

// MARK: - VNextOnSelectCommand
struct VNextOnSelectCommand: Codable {
    let clickTrackingParams: String?
    let watchEndpoint: VNextEndpointWatchEndpoint?
    let browseEndpoint: VNextOnSelectCommandBrowseEndpoint?
    let openPopupAction: VNextOnSelectCommandOpenPopupAction?
    let signalAction: VNextSignalAction?
}

// MARK: - VNextOnSelectCommandOpenPopupAction
struct VNextOnSelectCommandOpenPopupAction: Codable {
    let popup: VNextPurplePopup?
    let popupType: String?
}

// MARK: - VNextPurplePopup
struct VNextPurplePopup: Codable {
    let overlaySectionRenderer: VNextPurpleOverlaySectionRenderer?
}

// MARK: - VNextPurpleOverlaySectionRenderer
struct VNextPurpleOverlaySectionRenderer: Codable {
    let dismissalCommand: VNextDismissalCommandClass?
    let overlay: VNextPurpleOverlay?
    let trackingParams: String?
}

// MARK: - VNextPurpleOverlay
struct VNextPurpleOverlay: Codable {
    let overlayTwoPanelRenderer: VNextPurpleOverlayTwoPanelRenderer?
}

// MARK: - VNextPurpleOverlayTwoPanelRenderer
struct VNextPurpleOverlayTwoPanelRenderer: Codable {
    let actionPanel: VNextPurpleActionPanel?
    let backButton: VNextPurpleBackButton?
}

// MARK: - VNextPurpleActionPanel
struct VNextPurpleActionPanel: Codable {
    let overlayPanelRenderer: VNextPurpleOverlayPanelRenderer?
}

// MARK: - VNextPurpleOverlayPanelRenderer
struct VNextPurpleOverlayPanelRenderer: Codable {
    let header: VNextPurpleHeader?
    let content: VNextFluffyContent?
    let trackingParams: String?
}

// MARK: - VNextFluffyContent
struct VNextFluffyContent: Codable {
    let scrollPaneRenderer: VNextScrollPaneRenderer?
    let itemSectionRenderer: VNextFluffyItemSectionRenderer?
}

// MARK: - VNextFluffyItemSectionRenderer
struct VNextFluffyItemSectionRenderer: Codable {
    let continuations: [VNextItemSectionRendererContinuation]?
    let trackingParams, sectionIdentifier: String?
}

// MARK: - VNextItemSectionRendererContinuation
struct VNextItemSectionRendererContinuation: Codable {
    let reloadContinuationData: VNextReloadContinuationData?
}

// MARK: - VNextScrollPaneRenderer
struct VNextScrollPaneRenderer: Codable {
    let content: VNextScrollPaneRendererContent?
}

// MARK: - VNextScrollPaneRendererContent
struct VNextScrollPaneRendererContent: Codable {
    let scrollPaneItemListRenderer: VNextScrollPaneItemListRenderer?
}

// MARK: - VNextScrollPaneItemListRenderer
struct VNextScrollPaneItemListRenderer: Codable {
    let items: [VNextScrollPaneItemListRendererItem]?
}

// MARK: - VNextScrollPaneItemListRendererItem
struct VNextScrollPaneItemListRendererItem: Codable {
    let overlayMessageRenderer: VNextPurpleOverlayMessageRenderer?
}

// MARK: - VNextPurpleOverlayMessageRenderer
struct VNextPurpleOverlayMessageRenderer: Codable {
    let subtitle: VNextByline?
}

// MARK: - VNextPurpleHeader
struct VNextPurpleHeader: Codable {
    let overlayPanelHeaderRenderer: VNextOverlayPanelHeaderRenderer?
}

// MARK: - VNextOverlayPanelHeaderRenderer
struct VNextOverlayPanelHeaderRenderer: Codable {
    let title, subtitle: VNextByline?
}

// MARK: - VNextPurpleBackButton
struct VNextPurpleBackButton: Codable {
    let buttonRenderer: VNextPurpleButtonRenderer?
}

// MARK: - VNextPurpleButtonRenderer
struct VNextPurpleButtonRenderer: Codable {
    let trackingParams: String?
    let accessibilityData: VNextShortViewCountTextAccessibilityData?
    let command: VNextDismissalCommandClass?
}

enum VNextTileRendererStyle: String, Codable {
    case tileStyleYtlrDefault = "TILE_STYLE_YTLR_DEFAULT"
    case tileStyleYtlrRound = "TILE_STYLE_YTLR_ROUND"
}

// MARK: - VNextHeaderRenderer
struct VNextHeaderRenderer: Codable {
    let shelfHeaderRenderer: VNextShelfHeaderRenderer?
}

// MARK: - VNextShelfHeaderRenderer
struct VNextShelfHeaderRenderer: Codable {
    let title: VNextCancelTextClass?
}

// MARK: - VNextSingleColumnWatchNextResultsResults
struct VNextSingleColumnWatchNextResultsResults: Codable {
    let results: VNextResultsResults?
}

// MARK: - VNextResultsResults
struct VNextResultsResults: Codable {
    let contents: [VNextResultsContent]?
}

// MARK: - VNextResultsContent
struct VNextResultsContent: Codable {
    let itemSectionRenderer: VNextTentacledItemSectionRenderer?
}

// MARK: - VNextTentacledItemSectionRenderer
struct VNextTentacledItemSectionRenderer: Codable {
    let contents: [VNextTentacledContent]?
}

// MARK: - VNextTentacledContent
struct VNextTentacledContent: Codable {
    let videoMetadataRenderer: VNextVideoMetadataRenderer?
}

// MARK: - VNextVideoMetadataRenderer
struct VNextVideoMetadataRenderer: Codable {
    let title, description: VNextByline?
    let dateText: VNextShortViewCountTextClass?
    let videoID: String?
    let likeButton: VNextVideoMetadataRendererLikeButton?
    let owner: VNextOwner?
    let viewCount: VNextViewCount?
    let publishedTimeText: VNextCancelTextClass?

    enum CodingKeys: String, CodingKey {
        case title, description, dateText
        case videoID = "videoId"
        case likeButton, owner, viewCount, publishedTimeText
    }
}

// MARK: - VNextVideoMetadataRendererLikeButton
struct VNextVideoMetadataRendererLikeButton: Codable {
    let likeButtonRenderer: VNextLikeButtonRenderer?
}

// MARK: - VNextLikeButtonRenderer
struct VNextLikeButtonRenderer: Codable {
    let target: VNextTarget?
    let likeStatus: String?
    let likeCount: Int?
    let likeCountText, likeCountWithLikeText: VNextShortViewCountTextClass?
    let trackingParams: String?
    let likesAllowed: Bool?
    let dislikeNavigationEndpoint, likeCommand: VNextDislikeNavigationEndpoint?
}

// MARK: - VNextDislikeNavigationEndpoint
struct VNextDislikeNavigationEndpoint: Codable {
    let clickTrackingParams: String?
    let authDeterminedCommand: VNextDislikeNavigationEndpointAuthDeterminedCommand?
}

// MARK: - VNextDislikeNavigationEndpointAuthDeterminedCommand
struct VNextDislikeNavigationEndpointAuthDeterminedCommand: Codable {
    let authenticatedCommand: VNextPurpleAuthenticatedCommand?
    let unauthenticatedCommand: VNextPurpleUnauthenticatedCommand?
}

// MARK: - VNextPurpleAuthenticatedCommand
struct VNextPurpleAuthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let likeEndpoint: VNextPurpleLikeEndpoint?
}

// MARK: - VNextPurpleLikeEndpoint
struct VNextPurpleLikeEndpoint: Codable {
    let status: String?
    let target: VNextSelectSubtitlesTrackCommand?
}

// MARK: - VNextSelectSubtitlesTrackCommand
struct VNextSelectSubtitlesTrackCommand: Codable {
}

// MARK: - VNextPurpleUnauthenticatedCommand
struct VNextPurpleUnauthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let authRequiredCommand: VNextPurpleAuthRequiredCommand?
}

// MARK: - VNextPurpleAuthRequiredCommand
struct VNextPurpleAuthRequiredCommand: Codable {
    let identityActionContext: VNextPurpleIdentityActionContext?
}

// MARK: - VNextPurpleIdentityActionContext
struct VNextPurpleIdentityActionContext: Codable {
    let eventTrigger: String?
    let nextEndpoint: VNextPurpleNextEndpoint?
}

// MARK: - VNextPurpleNextEndpoint
struct VNextPurpleNextEndpoint: Codable {
    let clickTrackingParams: String?
    let commandExecutorCommand: VNextPurpleCommandExecutorCommand?
}

// MARK: - VNextPurpleCommandExecutorCommand
struct VNextPurpleCommandExecutorCommand: Codable {
    let commands: [VNextPurpleCommand]?
}

// MARK: - VNextPurpleCommand
struct VNextPurpleCommand: Codable {
    let clickTrackingParams: String?
    let signalAction: VNextSignalAction?
    let likeEndpoint: VNextPurpleLikeEndpoint?
}

// MARK: - VNextOwner
struct VNextOwner: Codable {
    let videoOwnerRenderer: VNextOwnerVideoOwnerRenderer?
}

// MARK: - VNextOwnerVideoOwnerRenderer
struct VNextOwnerVideoOwnerRenderer: Codable {
    let thumbnail: VNextBackground?
    let title: VNextCancelTextClass?
    let navigationEndpoint: VNextRunNavigationEndpoint?
    let subscriberCountText: VNextShortViewCountTextClass?
    let subscribeButton: VNextSubscribeButton?
    let trackingParams: String?
    let badges: [VNextBadgeElement]?
    let membershipButton: VNextMembershipButton?
}

// MARK: - VNextBadgeElement
struct VNextBadgeElement: Codable {
    let metadataBadgeRenderer: VNextFluffyMetadataBadgeRenderer?
}

// MARK: - VNextFluffyMetadataBadgeRenderer
struct VNextFluffyMetadataBadgeRenderer: Codable {
    let icon: VNextIcon?
    let style, tooltip, trackingParams: String?
}

// MARK: - VNextMembershipButton
struct VNextMembershipButton: Codable {
    let buttonRenderer: VNextMembershipButtonButtonRenderer?
}

// MARK: - VNextMembershipButtonButtonRenderer
struct VNextMembershipButtonButtonRenderer: Codable {
    let trackingParams: String?
}

// MARK: - VNextSubscribeButton
struct VNextSubscribeButton: Codable {
    let subscribeButtonRenderer: VNextSubscribeButtonSubscribeButtonRenderer?
}

// MARK: - VNextSubscribeButtonSubscribeButtonRenderer
struct VNextSubscribeButtonSubscribeButtonRenderer: Codable {
    let buttonText: VNextByline?
    let subscriberCountText: VNextCancelTextClass?
    let subscribed, enabled: Bool?
    let type, channelID: String?
    let showPreferences: Bool?
    let subscriberCountWithSubscribeText: VNextCancelTextClass?
    let subscribedButtonText, unsubscribedButtonText: VNextByline?
    let trackingParams: String?
    let unsubscribeButtonText: VNextByline?
    let serviceEndpoints: [VNextServiceEndpointElement]?
    let longSubscriberCountText: VNextShortViewCountTextClass?
    let shortSubscriberCountText: VNextCancelTextClass?
    let notificationPreferenceButton: VNextNotificationPreferenceButton?
    let targetID, subscribedEntityKey: String?

    enum CodingKeys: String, CodingKey {
        case buttonText, subscriberCountText, subscribed, enabled, type
        case channelID = "channelId"
        case showPreferences, subscriberCountWithSubscribeText, subscribedButtonText, unsubscribedButtonText, trackingParams, unsubscribeButtonText, serviceEndpoints, longSubscriberCountText, shortSubscriberCountText, notificationPreferenceButton
        case targetID = "targetId"
        case subscribedEntityKey
    }
}

// MARK: - VNextPurpleOverlayPanelItemListRenderer
struct VNextPurpleOverlayPanelItemListRenderer: Codable {
    let items: [VNextNotificationPreferenceButton]?
}

// MARK: - VNextStickyContent
struct VNextStickyContent: Codable {
    let overlayPanelItemListRenderer: VNextPurpleOverlayPanelItemListRenderer?
}

// MARK: - VNextFluffyOverlayPanelRenderer
struct VNextFluffyOverlayPanelRenderer: Codable {
    let header: VNextPurpleHeader?
    let content: VNextStickyContent?
    let trackingParams: String?
}

// MARK: - VNextFluffyActionPanel
struct VNextFluffyActionPanel: Codable {
    let overlayPanelRenderer: VNextFluffyOverlayPanelRenderer?
}

// MARK: - VNextFluffyOverlayTwoPanelRenderer
struct VNextFluffyOverlayTwoPanelRenderer: Codable {
    let actionPanel: VNextFluffyActionPanel?
    let backButton: VNextFluffyBackButton?
}

// MARK: - VNextFluffyOverlay
struct VNextFluffyOverlay: Codable {
    let overlayTwoPanelRenderer: VNextFluffyOverlayTwoPanelRenderer?
}

// MARK: - VNextFluffyOverlaySectionRenderer
struct VNextFluffyOverlaySectionRenderer: Codable {
    let dismissalCommand: VNextDismissalCommandClass?
    let overlay: VNextFluffyOverlay?
    let trackingParams: String?
}

// MARK: - VNextFluffyPopup
struct VNextFluffyPopup: Codable {
    let overlaySectionRenderer: VNextFluffyOverlaySectionRenderer?
}

// MARK: - VNextPurpleOpenPopupAction
struct VNextPurpleOpenPopupAction: Codable {
    let popup: VNextFluffyPopup?
    let popupType: String?
    let replacePopup: Bool?
}

// MARK: - VNextSubscriptionNotificationToggleButtonRendererCommand
struct VNextSubscriptionNotificationToggleButtonRendererCommand: Codable {
    let clickTrackingParams: String?
    let openPopupAction: VNextPurpleOpenPopupAction?
}

// MARK: - VNextSubscriptionNotificationToggleButtonRenderer
struct VNextSubscriptionNotificationToggleButtonRenderer: Codable {
    let states: [VNextStateElement]?
    let currentStateID: Int?
    let trackingParams, onTapBehavior, targetID, notificationStateEntityKey: String?
    let command: VNextSubscriptionNotificationToggleButtonRendererCommand?
    let notificationsLabel: VNextByline?

    enum CodingKeys: String, CodingKey {
        case states
        case currentStateID = "currentStateId"
        case trackingParams, onTapBehavior
        case targetID = "targetId"
        case notificationStateEntityKey, command, notificationsLabel
    }
}

// MARK: - VNextNotificationPreferenceButton
struct VNextNotificationPreferenceButton: Codable {
    let subscriptionNotificationToggleButtonRenderer: VNextSubscriptionNotificationToggleButtonRenderer?
}

// MARK: - VNextFluffyBackButton
struct VNextFluffyBackButton: Codable {
    let buttonRenderer: VNextFluffyButtonRenderer?
}

// MARK: - VNextFluffyButtonRenderer
struct VNextFluffyButtonRenderer: Codable {
    let icon: VNextIcon?
    let trackingParams: String?
    let command: VNextDismissalCommandClass?
}

// MARK: - VNextStateElement
struct VNextStateElement: Codable {
    let stateID, nextStateID: Int?
    let state: VNextStateState?
    let inlineMenuButton: VNextInlineMenuButton?
    let notificationState: String?

    enum CodingKeys: String, CodingKey {
        case stateID = "stateId"
        case nextStateID = "nextStateId"
        case state, inlineMenuButton, notificationState
    }
}

// MARK: - VNextInlineMenuButton
struct VNextInlineMenuButton: Codable {
    let buttonRenderer: VNextInlineMenuButtonButtonRenderer?
}

// MARK: - VNextInlineMenuButtonButtonRenderer
struct VNextInlineMenuButtonButtonRenderer: Codable {
    let style, size: String?
    let isDisabled: Bool?
    let text: VNextCancelTextClass?
    let serviceEndpoint: VNextButtonRendererServiceEndpoint?
    let icon: VNextIcon?
    let trackingParams: String?
}

// MARK: - VNextButtonRendererServiceEndpoint
struct VNextButtonRendererServiceEndpoint: Codable {
    let clickTrackingParams: String?
    let modifyChannelNotificationPreferenceEndpoint: VNextModifyChannelNotificationPreferenceEndpoint?
}

// MARK: - VNextModifyChannelNotificationPreferenceEndpoint
struct VNextModifyChannelNotificationPreferenceEndpoint: Codable {
    let params: String?
}

// MARK: - VNextStateState
struct VNextStateState: Codable {
    let buttonRenderer: VNextStateButtonRenderer?
}

// MARK: - VNextStateButtonRenderer
struct VNextStateButtonRenderer: Codable {
    let style, size: String?
    let isDisabled: Bool?
    let icon: VNextIcon?
    let accessibility: VNextAccessibilityDataAccessibility?
    let trackingParams: String?
    let accessibilityData: VNextShortViewCountTextAccessibilityData?
}

// MARK: - VNextServiceEndpointElement
struct VNextServiceEndpointElement: Codable {
    let clickTrackingParams: String?
    let authDeterminedCommand: VNextServiceEndpointAuthDeterminedCommand?
    let unsubscribeEndpoint: VNextSubscribeEndpoint?
}

// MARK: - VNextServiceEndpointAuthDeterminedCommand
struct VNextServiceEndpointAuthDeterminedCommand: Codable {
    let authenticatedCommand: VNextFluffyAuthenticatedCommand?
    let unauthenticatedCommand: VNextFluffyUnauthenticatedCommand?
}

// MARK: - VNextFluffyAuthenticatedCommand
struct VNextFluffyAuthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let subscribeEndpoint: VNextSubscribeEndpoint?
}

// MARK: - VNextSubscribeEndpoint
struct VNextSubscribeEndpoint: Codable {
    let channelIDS: [String]?
    let params: String?

    enum CodingKeys: String, CodingKey {
        case channelIDS = "channelIds"
        case params
    }
}

// MARK: - VNextFluffyUnauthenticatedCommand
struct VNextFluffyUnauthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let authRequiredCommand: VNextFluffyAuthRequiredCommand?
}

// MARK: - VNextFluffyAuthRequiredCommand
struct VNextFluffyAuthRequiredCommand: Codable {
    let identityActionContext: VNextFluffyIdentityActionContext?
}

// MARK: - VNextFluffyIdentityActionContext
struct VNextFluffyIdentityActionContext: Codable {
    let eventTrigger: String?
    let nextEndpoint: VNextFluffyNextEndpoint?
}

// MARK: - VNextFluffyNextEndpoint
struct VNextFluffyNextEndpoint: Codable {
    let clickTrackingParams: String?
    let commandExecutorCommand: VNextFluffyCommandExecutorCommand?
}

// MARK: - VNextFluffyCommandExecutorCommand
struct VNextFluffyCommandExecutorCommand: Codable {
    let commands: [VNextFluffyCommand]?
}

// MARK: - VNextFluffyCommand
struct VNextFluffyCommand: Codable {
    let clickTrackingParams: String?
    let signalAction: VNextSignalAction?
    let subscribeEndpoint: VNextSubscribeEndpoint?
}

// MARK: - VNextViewCount
struct VNextViewCount: Codable {
    let videoViewCountRenderer: VNextVideoViewCountRenderer?
}

// MARK: - VNextVideoViewCountRenderer
struct VNextVideoViewCountRenderer: Codable {
    let viewCount, shortViewCount: VNextCancelTextClass?
}

// MARK: - VNextPlayerOverlays
struct VNextPlayerOverlays: Codable {
    let playerOverlayRenderer: VNextPlayerOverlayRenderer?
}

// MARK: - VNextPlayerOverlayRenderer
struct VNextPlayerOverlayRenderer: Codable {
    let autoplay: VNextPlayerOverlayRendererAutoplay?
    let videoDetails: VNextVideoDetails?
    let decoratedPlayerBarRenderer: VNextPlayerOverlayRendererDecoratedPlayerBarRenderer?
    let isAutoplayEnabled: Bool?
}

// MARK: - VNextPlayerOverlayRendererAutoplay
struct VNextPlayerOverlayRendererAutoplay: Codable {
    let playerOverlayAutoplayRenderer: VNextPlayerOverlayAutoplayRenderer?
}

// MARK: - VNextPlayerOverlayAutoplayRenderer
struct VNextPlayerOverlayAutoplayRenderer: Codable {
    let title, videoTitle: VNextCancelTextClass?
    let byline: VNextByline?
    let cancelText, pauseText: VNextCancelTextClass?
    let nextEndpoint: VNextPlayerOverlayAutoplayRendererNextEndpoint?
    let background: VNextBackground?
    let countDownSecs: Int?
    let trackingParams: String?
    let preferImmediateRedirect: Bool?
    let videoID: String?
    let publishedTimeText: VNextCancelTextClass?
    let shortViewCountText: VNextShortViewCountTextClass?
    let countDownSecsForFullscreen: Int?

    enum CodingKeys: String, CodingKey {
        case title, videoTitle, byline, cancelText, pauseText, nextEndpoint, background, countDownSecs, trackingParams, preferImmediateRedirect
        case videoID = "videoId"
        case publishedTimeText, shortViewCountText, countDownSecsForFullscreen
    }
}

// MARK: - VNextPlayerOverlayAutoplayRendererNextEndpoint
struct VNextPlayerOverlayAutoplayRendererNextEndpoint: Codable {
    let clickTrackingParams: String?
    let watchEndpoint: VNextNextEndpointWatchEndpoint?
}

// MARK: - VNextNextEndpointWatchEndpoint
struct VNextNextEndpointWatchEndpoint: Codable {
    let videoID: String?
    let ustreamerConfig: String?
    let watchEndpointSupportedOnesieConfig: VNextWatchEndpointSupportedOnesieConfig?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case ustreamerConfig, watchEndpointSupportedOnesieConfig
    }
}

// MARK: - VNextPlayerOverlayRendererDecoratedPlayerBarRenderer
struct VNextPlayerOverlayRendererDecoratedPlayerBarRenderer: Codable {
    let decoratedPlayerBarRenderer: VNextDecoratedPlayerBarRendererDecoratedPlayerBarRenderer?
}

// MARK: - VNextDecoratedPlayerBarRendererDecoratedPlayerBarRenderer
struct VNextDecoratedPlayerBarRendererDecoratedPlayerBarRenderer: Codable {
    let playerBar: VNextPlayerBar?
}

// MARK: - VNextPlayerBar
struct VNextPlayerBar: Codable {
    let multiMarkersPlayerBarRenderer: VNextMultiMarkersPlayerBarRenderer?
}

// MARK: - VNextMultiMarkersPlayerBarRenderer
struct VNextMultiMarkersPlayerBarRenderer: Codable {
    let visibleOnLoad: VNextVisibleOnLoad?
    let markersMap: [VNextMarkersMap]?
}

// MARK: - VNextMarkersMap
struct VNextMarkersMap: Codable {
    let key: String?
    let value: VNextValue?
}

// MARK: - VNextValue
struct VNextValue: Codable {
    let chapters: [VNextValueChapter]?
}

// MARK: - VNextValueChapter
struct VNextValueChapter: Codable, Identifiable {
    var id: UUID? = UUID()
    let chapterRenderer: VNextChapterRenderer?
}

// MARK: - VNextChapterRenderer
struct VNextChapterRenderer: Codable {
    let title: VNextCancelTextClass?
    let timeRangeStartMillis: Int?
    let onActiveCommand: VNextOnActiveCommand?
    let thumbnail: VNextBackground?
}

// MARK: - VNextOnActiveCommand
struct VNextOnActiveCommand: Codable {
    let entityUpdateCommand: VNextEntityUpdateCommand?
}

// MARK: - VNextEntityUpdateCommand
struct VNextEntityUpdateCommand: Codable {
    let entityBatchUpdate: VNextEntityBatchUpdate?
}

// MARK: - VNextEntityBatchUpdate
struct VNextEntityBatchUpdate: Codable {
    let mutations: [VNextMutation]?
}

// MARK: - VNextMutation
struct VNextMutation: Codable {
    let type: VNextType?
    let payload: VNextPayload?
}

// MARK: - VNextPayload
struct VNextPayload: Codable {
    let markersEngagementPanelSyncEntity: VNextMarkersEngagementPanelSyncEntity?
}

// MARK: - VNextMarkersEngagementPanelSyncEntity
struct VNextMarkersEngagementPanelSyncEntity: Codable {
    let panelID: VNextPanelID?
    let activeItemIndex: Int?
    let syncEnabled: Bool?

    enum CodingKeys: String, CodingKey {
        case panelID = "panelId"
        case activeItemIndex, syncEnabled
    }
}

enum VNextPanelID: String, Codable {
    case engagementPanelMacroMarkersDescriptionChapters = "engagement-panel-macro-markers-description-chapters"
    case engagementPanelMacroMarkersAutoChapters = "engagement-panel-macro-markers-auto-chapters"
}

enum VNextType: String, Codable {
    case entityMutationTypeReplace = "ENTITY_MUTATION_TYPE_REPLACE"
}

// MARK: - VNextVisibleOnLoad
struct VNextVisibleOnLoad: Codable {
    let key: String?
}

// MARK: - VNextVideoDetails
struct VNextVideoDetails: Codable {
    let playerOverlayVideoDetailsRenderer: VNextPlayerOverlayVideoDetailsRenderer?
}

// MARK: - VNextPlayerOverlayVideoDetailsRenderer
struct VNextPlayerOverlayVideoDetailsRenderer: Codable {
    let title: VNextCancelTextClass?
    let subtitle: VNextByline?
}

// MARK: - VNextTransportControls
struct VNextTransportControls: Codable {
    let transportControlsRenderer: VNextTransportControlsRenderer?
}

// MARK: - VNextTransportControlsRenderer
struct VNextTransportControlsRenderer: Codable {
    let addToButton: VNextAddToButton?
    let reportButton: VNextReportButton?
    let feedbackButton: VNextFeedbackButton?
    let qualityButton: VNextButton?
    let captionsButton: VNextCaptionsButton?
    let audioTracksButton: VNextButton?
    let statsForNerdsButton: VNextStatsForNerdsButton?
    let likeButton: VNextTransportControlsRendererLikeButton?
    let dislikeButton: VNextDislikeButton?
    let channelButton: VNextChannelButton?
    let superThanksButton: VNextSuperThanksButton?
    let surroundSoundButton: VNextSurroundSoundButton?
    let playbackSettingsButton: VNextButton?
}

// MARK: - VNextAddToButton
struct VNextAddToButton: Codable {
    let buttonRenderer: VNextAddToButtonButtonRenderer?
}

// MARK: - VNextAddToButtonButtonRenderer
struct VNextAddToButtonButtonRenderer: Codable {
    let isDisabled: Bool?
    let text: VNextByline?
    let icon: VNextIcon?
    let trackingParams: String?
    let command: VNextTentacledCommand?
}

// MARK: - VNextTentacledCommand
struct VNextTentacledCommand: Codable {
    let clickTrackingParams: String?
    let authDeterminedCommand: VNextPurpleAuthDeterminedCommand?
}

// MARK: - VNextPurpleAuthDeterminedCommand
struct VNextPurpleAuthDeterminedCommand: Codable {
    let authenticatedCommand: VNextStickyCommand?
    let unauthenticatedCommand: VNextTentacledUnauthenticatedCommand?
}

// MARK: - VNextStickyCommand
struct VNextStickyCommand: Codable {
    let clickTrackingParams: String?
    let openClientOverlayAction: VNextPurpleOpenClientOverlayAction?
}

// MARK: - VNextPurpleOpenClientOverlayAction
struct VNextPurpleOpenClientOverlayAction: Codable {
    let type, context: String?
}

// MARK: - VNextTentacledUnauthenticatedCommand
struct VNextTentacledUnauthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let authRequiredCommand: VNextTentacledAuthRequiredCommand?
}

// MARK: - VNextTentacledAuthRequiredCommand
struct VNextTentacledAuthRequiredCommand: Codable {
    let identityActionContext: VNextTentacledIdentityActionContext?
}

// MARK: - VNextTentacledIdentityActionContext
struct VNextTentacledIdentityActionContext: Codable {
    let eventTrigger: String?
    let nextEndpoint: VNextTentacledNextEndpoint?
}

// MARK: - VNextTentacledNextEndpoint
struct VNextTentacledNextEndpoint: Codable {
    let clickTrackingParams: String?
    let commandExecutorCommand: VNextTentacledCommandExecutorCommand?
}

// MARK: - VNextTentacledCommandExecutorCommand
struct VNextTentacledCommandExecutorCommand: Codable {
    let commands: [VNextIndigoCommand]?
}

// MARK: - VNextIndigoCommand
struct VNextIndigoCommand: Codable {
    let clickTrackingParams: String?
    let signalAction: VNextSignalAction?
    let openClientOverlayAction: VNextPurpleOpenClientOverlayAction?
}

// MARK: - VNextButton
struct VNextButton: Codable {
    let buttonRenderer: VNextAudioTracksButtonButtonRenderer?
}

// MARK: - VNextAudioTracksButtonButtonRenderer
struct VNextAudioTracksButtonButtonRenderer: Codable {
    let isDisabled: Bool?
    let text: VNextByline?
    let icon: VNextIcon?
    let trackingParams: String?
    let command: VNextIndecentCommand?
}

// MARK: - VNextIndecentCommand
struct VNextIndecentCommand: Codable {
    let clickTrackingParams: String?
    let openClientOverlayAction: VNextFluffyOpenClientOverlayAction?
}

// MARK: - VNextFluffyOpenClientOverlayAction
struct VNextFluffyOpenClientOverlayAction: Codable {
    let type: String?
}

// MARK: - VNextCaptionsButton
struct VNextCaptionsButton: Codable {
    let toggleButtonRenderer: VNextCaptionsButtonToggleButtonRenderer?
}

// MARK: - VNextCaptionsButtonToggleButtonRenderer
struct VNextCaptionsButtonToggleButtonRenderer: Codable {
    let isToggled, isDisabled: Bool?
    let defaultIcon: VNextIcon?
    let defaultText: VNextByline?
    let defaultServiceEndpoint: VNextPurpleDefaultServiceEndpoint?
    let toggledText: VNextByline?
    let toggledServiceEndpoint: VNextPurpleToggledServiceEndpoint?
    let trackingParams: String?
}

// MARK: - VNextPurpleDefaultServiceEndpoint
struct VNextPurpleDefaultServiceEndpoint: Codable {
    let clickTrackingParams: String?
    let selectSubtitlesTrackCommand: VNextDefaultServiceEndpointSelectSubtitlesTrackCommand?
}

// MARK: - VNextDefaultServiceEndpointSelectSubtitlesTrackCommand
struct VNextDefaultServiceEndpointSelectSubtitlesTrackCommand: Codable {
    let useDefaultTrack: Bool?
}

// MARK: - VNextPurpleToggledServiceEndpoint
struct VNextPurpleToggledServiceEndpoint: Codable {
    let clickTrackingParams: String?
    let selectSubtitlesTrackCommand: VNextSelectSubtitlesTrackCommand?
}

// MARK: - VNextChannelButton
struct VNextChannelButton: Codable {
    let videoOwnerRenderer: VNextChannelButtonVideoOwnerRenderer?
}

// MARK: - VNextChannelButtonVideoOwnerRenderer
struct VNextChannelButtonVideoOwnerRenderer: Codable {
    let thumbnail: VNextBackground?
    let title: VNextByline?
    let navigationEndpoint: VNextPurpleNavigationEndpoint?
    let trackingParams: String?
}

// MARK: - VNextPurpleNavigationEndpoint
struct VNextPurpleNavigationEndpoint: Codable {
    let clickTrackingParams: String?
    let openPopupAction: VNextNavigationEndpointOpenPopupAction?
}

// MARK: - VNextNavigationEndpointOpenPopupAction
struct VNextNavigationEndpointOpenPopupAction: Codable {
    let popup: VNextTentacledPopup?
    let popupType: String?
    let replacePopup: Bool?
}

// MARK: - VNextTentacledPopup
struct VNextTentacledPopup: Codable {
    let overlaySectionRenderer: VNextTentacledOverlaySectionRenderer?
}

// MARK: - VNextTentacledOverlaySectionRenderer
struct VNextTentacledOverlaySectionRenderer: Codable {
    let dismissalCommand: VNextDismissalCommandClass?
    let overlay: VNextTentacledOverlay?
    let trackingParams: String?
}

// MARK: - VNextTentacledOverlay
struct VNextTentacledOverlay: Codable {
    let overlayTwoPanelRenderer: VNextTentacledOverlayTwoPanelRenderer?
}

// MARK: - VNextTentacledOverlayTwoPanelRenderer
struct VNextTentacledOverlayTwoPanelRenderer: Codable {
    let actionPanel: VNextTentacledActionPanel?
    let backButton: VNextFluffyBackButton?
}

// MARK: - VNextTentacledActionPanel
struct VNextTentacledActionPanel: Codable {
    let overlayPanelRenderer: VNextTentacledOverlayPanelRenderer?
}

// MARK: - VNextTentacledOverlayPanelRenderer
struct VNextTentacledOverlayPanelRenderer: Codable {
    let header: VNextFluffyHeader?
    let content: VNextIndigoContent?
    let trackingParams: String?
}

// MARK: - VNextIndigoContent
struct VNextIndigoContent: Codable {
    let overlayPanelItemListRenderer: VNextFluffyOverlayPanelItemListRenderer?
}

// MARK: - VNextFluffyOverlayPanelItemListRenderer
struct VNextFluffyOverlayPanelItemListRenderer: Codable {
    let items: [VNextPurpleItem]?
}

// MARK: - VNextPurpleItem
struct VNextPurpleItem: Codable {
    let compactLinkRenderer: VNextCompactLinkRenderer?
    let subscribeButtonRenderer: VNextItemSubscribeButtonRenderer?
}

// MARK: - VNextCompactLinkRenderer
struct VNextCompactLinkRenderer: Codable {
    let title: VNextCancelTextClass?
    let navigationEndpoint: VNextCompactLinkRendererNavigationEndpoint?
    let trackingParams: String?
}

// MARK: - VNextCompactLinkRendererNavigationEndpoint
struct VNextCompactLinkRendererNavigationEndpoint: Codable {
    let clickTrackingParams: String?
    let commandExecutorCommand: VNextNavigationEndpointCommandExecutorCommand?
}

// MARK: - VNextNavigationEndpointCommandExecutorCommand
struct VNextNavigationEndpointCommandExecutorCommand: Codable {
    let commands: [VNextHilariousCommand]?
}

// MARK: - VNextHilariousCommand
struct VNextHilariousCommand: Codable {
    let clickTrackingParams: String?
    let signalAction: VNextSignalAction?
    let browseEndpoint: VNextCommandBrowseEndpoint?
    let logYpcFlowStartCommand: VNextLogYpcFlowStartCommand?
    let authDeterminedCommand: VNextFluffyAuthDeterminedCommand?
}

// MARK: - VNextFluffyAuthDeterminedCommand
struct VNextFluffyAuthDeterminedCommand: Codable {
    let authenticatedCommand: VNextAuthenticatedCommand?
    let unauthenticatedCommand: VNextStickyUnauthenticatedCommand?
}

// MARK: - VNextAuthenticatedCommand
struct VNextAuthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let handoffEndpoint: VNextHandoffEndpoint?
}

// MARK: - VNextHandoffEndpoint
struct VNextHandoffEndpoint: Codable {
    let handoffParams: VNextHandoffParams?
}

// MARK: - VNextHandoffParams
struct VNextHandoffParams: Codable {
    let callType, actionType: String?
    let featureData: VNextFeatureData?
}

// MARK: - VNextFeatureData
struct VNextFeatureData: Codable {
    let ytcPurchaseData: VNextYtcPurchaseData?
}

// MARK: - VNextYtcPurchaseData
struct VNextYtcPurchaseData: Codable {
    let urlPath: String?
    let ytDeeplinkPurchaseParams: String?
}

// MARK: - VNextStickyUnauthenticatedCommand
struct VNextStickyUnauthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let authRequiredCommand: VNextStickyAuthRequiredCommand?
}

// MARK: - VNextStickyAuthRequiredCommand
struct VNextStickyAuthRequiredCommand: Codable {
    let identityActionContext: VNextStartSignInCommandIdentityActionContext?
    let hideInterstitial: Bool?
    let startSignInCommand: VNextAuthRequiredCommandStartSignInCommand?
}

// MARK: - VNextStartSignInCommandIdentityActionContext
struct VNextStartSignInCommandIdentityActionContext: Codable {
    let eventTrigger: String?
    let nextEndpoint: VNextAuthenticatedCommand?
}

// MARK: - VNextAuthRequiredCommandStartSignInCommand
struct VNextAuthRequiredCommandStartSignInCommand: Codable {
    let clickTrackingParams: String?
    let openPopupAction: VNextStartSignInCommandOpenPopupAction?
}

// MARK: - VNextStartSignInCommandOpenPopupAction
struct VNextStartSignInCommandOpenPopupAction: Codable {
    let popup: VNextStickyPopup?
    let popupType: String?
}

// MARK: - VNextStickyPopup
struct VNextStickyPopup: Codable {
    let overlaySectionRenderer: VNextStickyOverlaySectionRenderer?
}

// MARK: - VNextStickyOverlaySectionRenderer
struct VNextStickyOverlaySectionRenderer: Codable {
    let dismissalCommand: VNextDismissalCommandClass?
    let overlay: VNextStickyOverlay?
    let trackingParams: String?
}

// MARK: - VNextStickyOverlay
struct VNextStickyOverlay: Codable {
    let overlayPanelRenderer: VNextStickyOverlayPanelRenderer?
}

// MARK: - VNextStickyOverlayPanelRenderer
struct VNextStickyOverlayPanelRenderer: Codable {
    let content: VNextIndecentContent?
    let trackingParams: String?
}

// MARK: - VNextIndecentContent
struct VNextIndecentContent: Codable {
    let twoColumnRenderer: VNextPurpleTwoColumnRenderer?
}

// MARK: - VNextPurpleTwoColumnRenderer
struct VNextPurpleTwoColumnRenderer: Codable {
    let leftColumn: VNextPurpleLeftColumn?
    let rightColumn: VNextPurpleRightColumn?
    let style: String?
}

// MARK: - VNextPurpleLeftColumn
struct VNextPurpleLeftColumn: Codable {
    let purchaseMetadataRenderer: VNextPurchaseMetadataRenderer?
}

// MARK: - VNextPurchaseMetadataRenderer
struct VNextPurchaseMetadataRenderer: Codable {
    let logo: VNextBackground?
    let title: VNextByline?
    let metadata: VNextPurchaseMetadataRendererMetadata?
    let buttons: [VNextButtonElement]?
    let trackingParams: String?
}

// MARK: - VNextButtonElement
struct VNextButtonElement: Codable {
    let buttonRenderer: VNextButtonButtonRenderer?
}

// MARK: - VNextButtonButtonRenderer
struct VNextButtonButtonRenderer: Codable {
    let text: VNextByline?
    let icon: VNextIcon?
    let trackingParams: String?
    let onFocusCommand: VNextButtonRendererOnFocusCommand?
    let command: VNextAmbitiousCommand?
    let secondaryIcon: VNextIcon?
}

// MARK: - VNextAmbitiousCommand
struct VNextAmbitiousCommand: Codable {
    let clickTrackingParams: String?
    let startSignInCommand: VNextCommandStartSignInCommand?
}

// MARK: - VNextCommandStartSignInCommand
struct VNextCommandStartSignInCommand: Codable {
    let identityActionContext: VNextStartSignInCommandIdentityActionContext?
    let signInType: String?
}

// MARK: - VNextButtonRendererOnFocusCommand
struct VNextButtonRendererOnFocusCommand: Codable {
    let clickTrackingParams: String?
    let updateEntityButtonDetailsCommand: VNextUpdateEntityButtonDetailsCommand?
}

// MARK: - VNextUpdateEntityButtonDetailsCommand
struct VNextUpdateEntityButtonDetailsCommand: Codable {
    let selectedIndex: Int?
}

// MARK: - VNextPurchaseMetadataRendererMetadata
struct VNextPurchaseMetadataRendererMetadata: Codable {
    let channelMembershipRenderer: VNextChannelMembershipRenderer?
}

// MARK: - VNextChannelMembershipRenderer
struct VNextChannelMembershipRenderer: Codable {
    let avatar: VNextQrCodeImage?
    let channelName: VNextCancelTextClass?
    let byline: VNextByline?
}

// MARK: - VNextQrCodeImage
struct VNextQrCodeImage: Codable {
    let thumbnails: [VNextCommonConfig]?
}

// MARK: - VNextPurpleRightColumn
struct VNextPurpleRightColumn: Codable {
    let entityButtonDetailsRenderer: VNextEntityButtonDetailsRenderer?
}

// MARK: - VNextEntityButtonDetailsRenderer
struct VNextEntityButtonDetailsRenderer: Codable {
    let renderers: [VNextRenderer]?
    let selectedIndex: Int?
}

// MARK: - VNextRenderer
struct VNextRenderer: Codable {
    let urlSignInRenderer: VNextURLSignInRenderer?
    let overlayMessageRenderer: VNextRendererOverlayMessageRenderer?
}

// MARK: - VNextRendererOverlayMessageRenderer
struct VNextRendererOverlayMessageRenderer: Codable {
    let image: VNextBackground?
    let style: String?
}

// MARK: - VNextURLSignInRenderer
struct VNextURLSignInRenderer: Codable {
    let identityActionContext: VNextURLSignInRendererIdentityActionContext?
    let trackingParams, signInStyle: String?
    let qrCode: VNextQrCode?
}

// MARK: - VNextURLSignInRendererIdentityActionContext
struct VNextURLSignInRendererIdentityActionContext: Codable {
    let eventTrigger: String?
    let nextEndpoint: VNextAuthenticatedCommand?
    let secondScreenRedirectURL: String?

    enum CodingKeys: String, CodingKey {
        case eventTrigger, nextEndpoint
        case secondScreenRedirectURL = "secondScreenRedirectUrl"
    }
}

// MARK: - VNextQrCode
struct VNextQrCode: Codable {
    let qrCodeRenderer: VNextQrCodeRenderer?
}

// MARK: - VNextQrCodeRenderer
struct VNextQrCodeRenderer: Codable {
    let qrCodeImage: VNextQrCodeImage?
    let style, trackingParams: String?
}

// MARK: - VNextLogYpcFlowStartCommand
struct VNextLogYpcFlowStartCommand: Codable {
    let serializedTransactionFlowLoggingParams, flowAttribute: String?
}

// MARK: - VNextItemSubscribeButtonRenderer
struct VNextItemSubscribeButtonRenderer: Codable {
    let buttonText: VNextByline?
    let subscribed, enabled: Bool?
    let type, channelID: String?
    let showPreferences: Bool?
    let subscribedButtonText, unsubscribedButtonText: VNextByline?
    let trackingParams: String?
    let unsubscribeButtonText: VNextByline?
    let serviceEndpoints: [VNextServiceEndpointElement]?
    let notificationPreferenceButton: VNextNotificationPreferenceButton?
    let subscribedEntityKey: String?

    enum CodingKeys: String, CodingKey {
        case buttonText, subscribed, enabled, type
        case channelID = "channelId"
        case showPreferences, subscribedButtonText, unsubscribedButtonText, trackingParams, unsubscribeButtonText, serviceEndpoints, notificationPreferenceButton, subscribedEntityKey
    }
}

// MARK: - VNextFluffyHeader
struct VNextFluffyHeader: Codable {
    let overlayPanelHeaderRenderer: VNextOverlayRenderer?
}

// MARK: - VNextOverlayRenderer
struct VNextOverlayRenderer: Codable {
    let image: VNextBackground?
    let title, subtitle: VNextCancelTextClass?
    let style: String?
    let label: VNextCancelTextClass?
}

// MARK: - VNextDislikeButton
struct VNextDislikeButton: Codable {
    let toggleButtonRenderer: VNextDislikeButtonToggleButtonRenderer?
}

// MARK: - VNextDislikeButtonToggleButtonRenderer
struct VNextDislikeButtonToggleButtonRenderer: Codable {
    let isToggled, isDisabled: Bool?
    let defaultIcon: VNextIcon?
    let defaultText: VNextCancelTextClass?
    let defaultServiceEndpoint: VNextFluffyDefaultServiceEndpoint?
    let toggledIcon: VNextIcon?
    let toggledText: VNextCancelTextClass?
    let toggledServiceEndpoint: VNextFluffyToggledServiceEndpoint?
    let accessibility: VNextAccessibilityDataAccessibility?
    let trackingParams, defaultTooltip, toggledTooltip: String?
    let accessibilityData: VNextShortViewCountTextAccessibilityData?
    let targetID: String?

    enum CodingKeys: String, CodingKey {
        case isToggled, isDisabled, defaultIcon, defaultText, defaultServiceEndpoint, toggledIcon, toggledText, toggledServiceEndpoint, accessibility, trackingParams, defaultTooltip, toggledTooltip, accessibilityData
        case targetID = "targetId"
    }
}

// MARK: - VNextFluffyDefaultServiceEndpoint
struct VNextFluffyDefaultServiceEndpoint: Codable {
    let clickTrackingParams: String?
    let authDeterminedCommand: VNextTentacledAuthDeterminedCommand?
}

// MARK: - VNextTentacledAuthDeterminedCommand
struct VNextTentacledAuthDeterminedCommand: Codable {
    let authenticatedCommand: VNextTentacledAuthenticatedCommand?
    let unauthenticatedCommand: VNextIndigoUnauthenticatedCommand?
}

// MARK: - VNextTentacledAuthenticatedCommand
struct VNextTentacledAuthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let likeEndpoint: VNextFluffyLikeEndpoint?
}

// MARK: - VNextFluffyLikeEndpoint
struct VNextFluffyLikeEndpoint: Codable {
    let status: String?
    let target: VNextTarget?
    let dislikeParams: String?
}

// MARK: - VNextIndigoUnauthenticatedCommand
struct VNextIndigoUnauthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let authRequiredCommand: VNextIndigoAuthRequiredCommand?
}

// MARK: - VNextIndigoAuthRequiredCommand
struct VNextIndigoAuthRequiredCommand: Codable {
    let identityActionContext: VNextStickyIdentityActionContext?
}

// MARK: - VNextStickyIdentityActionContext
struct VNextStickyIdentityActionContext: Codable {
    let eventTrigger: String?
    let nextEndpoint: VNextStickyNextEndpoint?
}

// MARK: - VNextStickyNextEndpoint
struct VNextStickyNextEndpoint: Codable {
    let clickTrackingParams: String?
    let commandExecutorCommand: VNextStickyCommandExecutorCommand?
}

// MARK: - VNextStickyCommandExecutorCommand
struct VNextStickyCommandExecutorCommand: Codable {
    let commands: [VNextCunningCommand]?
}

// MARK: - VNextCunningCommand
struct VNextCunningCommand: Codable {
    let clickTrackingParams: String?
    let signalAction: VNextSignalAction?
    let likeEndpoint: VNextFluffyLikeEndpoint?
}

// MARK: - VNextFluffyToggledServiceEndpoint
struct VNextFluffyToggledServiceEndpoint: Codable {
    let clickTrackingParams: String?
    let authDeterminedCommand: VNextToggledServiceEndpointAuthDeterminedCommand?
}

// MARK: - VNextToggledServiceEndpointAuthDeterminedCommand
struct VNextToggledServiceEndpointAuthDeterminedCommand: Codable {
    let authenticatedCommand: VNextStickyAuthenticatedCommand?
    let unauthenticatedCommand: VNextIndecentUnauthenticatedCommand?
}

// MARK: - VNextStickyAuthenticatedCommand
struct VNextStickyAuthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let likeEndpoint: VNextTentacledLikeEndpoint?
}

// MARK: - VNextTentacledLikeEndpoint
struct VNextTentacledLikeEndpoint: Codable {
    let status: String?
    let target: VNextTarget?
    let removeLikeParams: String?
}

// MARK: - VNextIndecentUnauthenticatedCommand
struct VNextIndecentUnauthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let authRequiredCommand: VNextIndecentAuthRequiredCommand?
}

// MARK: - VNextIndecentAuthRequiredCommand
struct VNextIndecentAuthRequiredCommand: Codable {
    let identityActionContext: VNextIndigoIdentityActionContext?
}

// MARK: - VNextIndigoIdentityActionContext
struct VNextIndigoIdentityActionContext: Codable {
    let eventTrigger: String?
    let nextEndpoint: VNextIndigoNextEndpoint?
}

// MARK: - VNextIndigoNextEndpoint
struct VNextIndigoNextEndpoint: Codable {
    let clickTrackingParams: String?
    let commandExecutorCommand: VNextIndigoCommandExecutorCommand?
}

// MARK: - VNextIndigoCommandExecutorCommand
struct VNextIndigoCommandExecutorCommand: Codable {
    let commands: [VNextMagentaCommand]?
}

// MARK: - VNextMagentaCommand
struct VNextMagentaCommand: Codable {
    let clickTrackingParams: String?
    let signalAction: VNextSignalAction?
    let likeEndpoint: VNextTentacledLikeEndpoint?
}

// MARK: - VNextFeedbackButton
struct VNextFeedbackButton: Codable {
    let buttonRenderer: VNextFeedbackButtonButtonRenderer?
}

// MARK: - VNextFeedbackButtonButtonRenderer
struct VNextFeedbackButtonButtonRenderer: Codable {
    let isDisabled: Bool?
    let text: VNextByline?
    let icon: VNextIcon?
    let trackingParams: String?
    let command: VNextStickyCommand?
}

// MARK: - VNextTransportControlsRendererLikeButton
struct VNextTransportControlsRendererLikeButton: Codable {
    let toggleButtonRenderer: VNextLikeButtonToggleButtonRenderer?
}

// MARK: - VNextLikeButtonToggleButtonRenderer
struct VNextLikeButtonToggleButtonRenderer: Codable {
    let isToggled, isDisabled: Bool?
    let defaultIcon: VNextIcon?
    let defaultText: VNextCancelTextClass?
    let defaultServiceEndpoint: VNextTentacledDefaultServiceEndpoint?
    let toggledIcon: VNextIcon?
    let toggledText: VNextCancelTextClass?
    let toggledServiceEndpoint: VNextFluffyToggledServiceEndpoint?
    let accessibility: VNextAccessibilityDataAccessibility?
    let trackingParams, defaultTooltip, toggledTooltip: String?
    let accessibilityData: VNextShortViewCountTextAccessibilityData?
    let targetID: String?

    enum CodingKeys: String, CodingKey {
        case isToggled, isDisabled, defaultIcon, defaultText, defaultServiceEndpoint, toggledIcon, toggledText, toggledServiceEndpoint, accessibility, trackingParams, defaultTooltip, toggledTooltip, accessibilityData
        case targetID = "targetId"
    }
}

// MARK: - VNextTentacledDefaultServiceEndpoint
struct VNextTentacledDefaultServiceEndpoint: Codable {
    let clickTrackingParams: String?
    let authDeterminedCommand: VNextStickyAuthDeterminedCommand?
}

// MARK: - VNextStickyAuthDeterminedCommand
struct VNextStickyAuthDeterminedCommand: Codable {
    let authenticatedCommand: VNextIndigoAuthenticatedCommand?
    let unauthenticatedCommand: VNextHilariousUnauthenticatedCommand?
}

// MARK: - VNextIndigoAuthenticatedCommand
struct VNextIndigoAuthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let likeEndpoint: VNextStickyLikeEndpoint?
}

// MARK: - VNextStickyLikeEndpoint
struct VNextStickyLikeEndpoint: Codable {
    let status: String?
    let target: VNextTarget?
    let likeParams: String?
}

// MARK: - VNextHilariousUnauthenticatedCommand
struct VNextHilariousUnauthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let authRequiredCommand: VNextHilariousAuthRequiredCommand?
}

// MARK: - VNextHilariousAuthRequiredCommand
struct VNextHilariousAuthRequiredCommand: Codable {
    let identityActionContext: VNextIndecentIdentityActionContext?
}

// MARK: - VNextIndecentIdentityActionContext
struct VNextIndecentIdentityActionContext: Codable {
    let eventTrigger: String?
    let nextEndpoint: VNextIndecentNextEndpoint?
}

// MARK: - VNextIndecentNextEndpoint
struct VNextIndecentNextEndpoint: Codable {
    let clickTrackingParams: String?
    let commandExecutorCommand: VNextIndecentCommandExecutorCommand?
}

// MARK: - VNextIndecentCommandExecutorCommand
struct VNextIndecentCommandExecutorCommand: Codable {
    let commands: [VNextFriskyCommand]?
}

// MARK: - VNextFriskyCommand
struct VNextFriskyCommand: Codable {
    let clickTrackingParams: String?
    let signalAction: VNextSignalAction?
    let likeEndpoint: VNextStickyLikeEndpoint?
}

// MARK: - VNextReportButton
struct VNextReportButton: Codable {
    let buttonRenderer: VNextReportButtonButtonRenderer?
}

// MARK: - VNextReportButtonButtonRenderer
struct VNextReportButtonButtonRenderer: Codable {
    let isDisabled: Bool?
    let text: VNextByline?
    let icon: VNextIcon?
    let trackingParams: String?
    let command: VNextMischievousCommand?
}

// MARK: - VNextMischievousCommand
struct VNextMischievousCommand: Codable {
    let clickTrackingParams: String?
    let authDeterminedCommand: VNextIndigoAuthDeterminedCommand?
}

// MARK: - VNextIndigoAuthDeterminedCommand
struct VNextIndigoAuthDeterminedCommand: Codable {
    let authenticatedCommand: VNextIndecentCommand?
    let unauthenticatedCommand: VNextAmbitiousUnauthenticatedCommand?
}

// MARK: - VNextAmbitiousUnauthenticatedCommand
struct VNextAmbitiousUnauthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let authRequiredCommand: VNextAmbitiousAuthRequiredCommand?
}

// MARK: - VNextAmbitiousAuthRequiredCommand
struct VNextAmbitiousAuthRequiredCommand: Codable {
    let identityActionContext: VNextHilariousIdentityActionContext?
}

// MARK: - VNextHilariousIdentityActionContext
struct VNextHilariousIdentityActionContext: Codable {
    let eventTrigger: String?
    let nextEndpoint: VNextHilariousNextEndpoint?
}

// MARK: - VNextHilariousNextEndpoint
struct VNextHilariousNextEndpoint: Codable {
    let clickTrackingParams: String?
    let commandExecutorCommand: VNextHilariousCommandExecutorCommand?
}

// MARK: - VNextHilariousCommandExecutorCommand
struct VNextHilariousCommandExecutorCommand: Codable {
    let commands: [VNextBraggadociousCommand]?
}

// MARK: - VNextBraggadociousCommand
struct VNextBraggadociousCommand: Codable {
    let clickTrackingParams: String?
    let signalAction: VNextSignalAction?
    let openClientOverlayAction: VNextFluffyOpenClientOverlayAction?
}

// MARK: - VNextStatsForNerdsButton
struct VNextStatsForNerdsButton: Codable {
    let buttonRenderer: VNextStatsForNerdsButtonButtonRenderer?
}

// MARK: - VNextStatsForNerdsButtonButtonRenderer
struct VNextStatsForNerdsButtonButtonRenderer: Codable {
    let isDisabled: Bool?
    let text: VNextByline?
    let icon: VNextIcon?
    let trackingParams: String?
    let command: VNextDismissalCommandClass?
}

// MARK: - VNextSuperThanksButton
struct VNextSuperThanksButton: Codable {
    let buttonRenderer: VNextSuperThanksButtonButtonRenderer?
}

// MARK: - VNextSuperThanksButtonButtonRenderer
struct VNextSuperThanksButtonButtonRenderer: Codable {
    let isDisabled: Bool?
    let text: VNextByline?
    let icon: VNextIcon?
    let trackingParams: String?
    let accessibilityData: VNextShortViewCountTextAccessibilityData?
    let command: VNextCommand1?
}

// MARK: - VNextCommand1
struct VNextCommand1: Codable {
    let clickTrackingParams: String?
    let authDeterminedCommand: VNextIndecentAuthDeterminedCommand?
}

// MARK: - VNextIndecentAuthDeterminedCommand
struct VNextIndecentAuthDeterminedCommand: Codable {
    let authenticatedCommand: VNextIndecentAuthenticatedCommand?
    let unauthenticatedCommand: VNextCunningUnauthenticatedCommand?
}

// MARK: - VNextIndecentAuthenticatedCommand
struct VNextIndecentAuthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let openPopupAction: VNextAuthenticatedCommandOpenPopupAction?
}

// MARK: - VNextAuthenticatedCommandOpenPopupAction
struct VNextAuthenticatedCommandOpenPopupAction: Codable {
    let popup: VNextIndigoPopup?
    let popupType: String?
}

// MARK: - VNextIndigoPopup
struct VNextIndigoPopup: Codable {
    let overlaySectionRenderer: VNextIndigoOverlaySectionRenderer?
}

// MARK: - VNextIndigoOverlaySectionRenderer
struct VNextIndigoOverlaySectionRenderer: Codable {
    let dismissalCommand: VNextDismissalCommandClass?
    let onOpenCommand: VNextOnOpenCommand?
    let overlay: VNextIndigoOverlay?
    let trackingParams: String?
}

// MARK: - VNextOnOpenCommand
struct VNextOnOpenCommand: Codable {
    let clickTrackingParams: String?
    let logYpcFlowStartCommand: VNextLogYpcFlowStartCommand?
}

// MARK: - VNextIndigoOverlay
struct VNextIndigoOverlay: Codable {
    let overlayPanelRenderer: VNextIndigoOverlayPanelRenderer?
}

// MARK: - VNextIndigoOverlayPanelRenderer
struct VNextIndigoOverlayPanelRenderer: Codable {
    let content: VNextHilariousContent?
    let trackingParams: String?
}

// MARK: - VNextHilariousContent
struct VNextHilariousContent: Codable {
    let twoColumnRenderer: VNextFluffyTwoColumnRenderer?
}

// MARK: - VNextFluffyTwoColumnRenderer
struct VNextFluffyTwoColumnRenderer: Codable {
    let leftColumn: VNextFluffyLeftColumn?
    let rightColumn: VNextFluffyRightColumn?
    let style: String?
}

// MARK: - VNextFluffyLeftColumn
struct VNextFluffyLeftColumn: Codable {
    let entityMetadataRenderer: VNextEntityMetadataRenderer?
}

// MARK: - VNextEntityMetadataRenderer
struct VNextEntityMetadataRenderer: Codable {
    let title: VNextCancelTextClass?
    let buttonLayout, trackingParams: String?
    let titleArt: VNextBackground?
    let messages: [VNextMessage]?
}

// MARK: - VNextMessage
struct VNextMessage: Codable {
    let overlayMessageRenderer: VNextOverlayRenderer?
}

// MARK: - VNextFluffyRightColumn
struct VNextFluffyRightColumn: Codable {
    let overlayPanelItemListRenderer: VNextRightColumnOverlayPanelItemListRenderer?
}

// MARK: - VNextRightColumnOverlayPanelItemListRenderer
struct VNextRightColumnOverlayPanelItemListRenderer: Codable {
    let items: [VNextFluffyItem]?
}

// MARK: - VNextFluffyItem
struct VNextFluffyItem: Codable {
    let qrCodeRenderer: VNextQrCodeRenderer?
    let overlayMessageRenderer: VNextFluffyOverlayMessageRenderer?
}

// MARK: - VNextFluffyOverlayMessageRenderer
struct VNextFluffyOverlayMessageRenderer: Codable {
    let title: VNextByline?
    let style: String?
}

// MARK: - VNextCunningUnauthenticatedCommand
struct VNextCunningUnauthenticatedCommand: Codable {
    let clickTrackingParams: String?
    let authRequiredCommand: VNextCunningAuthRequiredCommand?
}

// MARK: - VNextCunningAuthRequiredCommand
struct VNextCunningAuthRequiredCommand: Codable {
    let identityActionContext: VNextAmbitiousIdentityActionContext?
}

// MARK: - VNextAmbitiousIdentityActionContext
struct VNextAmbitiousIdentityActionContext: Codable {
    let eventTrigger: String?
    let nextEndpoint: VNextAmbitiousNextEndpoint?
}

// MARK: - VNextAmbitiousNextEndpoint
struct VNextAmbitiousNextEndpoint: Codable {
    let clickTrackingParams: String?
    let commandExecutorCommand: VNextAmbitiousCommandExecutorCommand?
}

// MARK: - VNextAmbitiousCommandExecutorCommand
struct VNextAmbitiousCommandExecutorCommand: Codable {
    let commands: [VNextCommand2]?
}

// MARK: - VNextCommand2
struct VNextCommand2: Codable {
    let clickTrackingParams: String?
    let signalAction: VNextSignalAction?
    let openPopupAction: VNextAuthenticatedCommandOpenPopupAction?
}

// MARK: - VNextSurroundSoundButton
struct VNextSurroundSoundButton: Codable {
    let toggleButtonRenderer: VNextSurroundSoundButtonToggleButtonRenderer?
}

// MARK: - VNextSurroundSoundButtonToggleButtonRenderer
struct VNextSurroundSoundButtonToggleButtonRenderer: Codable {
    let isToggled, isDisabled: Bool?
    let defaultIcon: VNextIcon?
    let defaultText: VNextByline?
    let defaultServiceEndpoint: VNextServiceEndpoint?
    let toggledIcon: VNextIcon?
    let toggledText: VNextByline?
    let toggledServiceEndpoint: VNextServiceEndpoint?
    let trackingParams: String?
}

// MARK: - VNextServiceEndpoint
struct VNextServiceEndpoint: Codable {
    let clickTrackingParams: String?
    let setClientSettingEndpoint: VNextSetClientSettingEndpoint?
}

// MARK: - VNextSetClientSettingEndpoint
struct VNextSetClientSettingEndpoint: Codable {
    let settingDatas: [VNextSettingData]?
}

// MARK: - VNextSettingData
struct VNextSettingData: Codable {
    let clientSettingEnum: VNextClientSettingEnum?
    let boolValue: Bool?
}

// MARK: - VNextClientSettingEnum
struct VNextClientSettingEnum: Codable {
    let item: String?
}
