//
//  VideoInfoResponse.swift
//  ytat
//
//  Created by Isaac Johnson on 1/30/23.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let videoInfoResponse = try? JSONDecoder().decode(VideoInfoResponse.self, from: jsonData)

import Foundation

// MARK: - VideoInfoResponse
struct VideoInfoResponse: Decodable {
    var streamingData: StreamingData
    var videoDetails: VideoDetails
}

// MARK: - StreamingData
struct StreamingData: Codable {
    var expiresInSeconds: String
    var hlsManifestURL: String
    var aspectRatio: Double

    enum CodingKeys: String, CodingKey {
        case expiresInSeconds
        case hlsManifestURL = "hlsManifestUrl"
        case aspectRatio
    }
}

// MARK: - VideoDetails
struct VideoDetails: Codable {
    var videoID, title, lengthSeconds: String
    var keywords: [String]?
    var channelID: String
    var isOwnerViewing: Bool?
    var shortDescription: String?
    var isCrawlable: Bool?
    var thumbnail: VideoDetailsThumbnail
    var allowRatings: Bool?
    var viewCount, author: String
    var isPrivate, isUnpluggedCorpus, isLiveContent: Bool?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case title, lengthSeconds, keywords
        case channelID = "channelId"
        case isOwnerViewing, shortDescription, isCrawlable, thumbnail, allowRatings, viewCount, author, isPrivate, isUnpluggedCorpus, isLiveContent
    }
}

// MARK: - VideoDetailsThumbnail
struct VideoDetailsThumbnail: Codable {
    var thumbnails: [VideoInfoThumbnailElement]
}

// MARK: - VideoInfoThumbnailElement
struct VideoInfoThumbnailElement: Codable {
    var url: String
    var width, height: Int
}
