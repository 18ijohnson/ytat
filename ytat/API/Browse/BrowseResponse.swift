//
//  BrowseResponse.swift
//  ytat
//
//  Created by Isaac Johnson on 1/29/23.
//

import Foundation

// MARK: - BrowseResponse
struct BrowseResponse: Decodable {
    var contents: BrowseContents
}

struct BrowseContents: Decodable {
    var tvBrowseRenderer: TvBrowseRenderer
}

struct TvBrowseRenderer: Decodable {
    var content: BrowseContent
}

struct BrowseContent: Decodable {
    var tvSurfaceContentRenderer: TvSurfaceContentRenderer
}

struct TvSurfaceContentRenderer: Decodable {
    var content: SectionList
}
