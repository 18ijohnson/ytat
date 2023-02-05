//
//  VideoCardGrid.swift
//  ytat
//
//  Created by Isaac Johnson on 1/27/23.
//

import Foundation

// MARK: - VideoCard
class VideoCard: Hashable, Equatable {
    let uuid = UUID()
    let videoThumbnail: URL
    let videoFocusThumbnail: URL
    let videoThumbnailOverlayTimeStatus: String
    let videoTitle: String
    let videoLine1: String
    let videoLine2: String
    let videoLine3: String
    let videoID: String

    static let example = VideoCard(videoThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoFocusThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoThumbnailOverlayTimeStatus: "\(Int.random(in: 1..<60)):\(Int.random(in: 1..<60))", videoTitle: randomString(length: 30), videoLine1: randomString(length: 15), videoLine2: "\(Int.random(in: 1..<1000))K Views • \(Int.random(in: 1..<30)) Days Ago", videoID: "")
    
    init(videoThumbnail: URL, videoFocusThumbnail: URL, videoThumbnailOverlayTimeStatus: String, videoTitle: String, videoLine1: String, videoLine2: String, videoLine3: String = "", videoID: String) {
        self.videoThumbnail = videoThumbnail
        self.videoFocusThumbnail = videoFocusThumbnail
        self.videoThumbnailOverlayTimeStatus = videoThumbnailOverlayTimeStatus
        self.videoTitle = videoTitle
        self.videoLine1 = videoLine1
        self.videoLine2 = videoLine2
        self.videoLine3 = videoLine3
        self.videoID = videoID
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(uuid)
    }
    static func == (lhs: VideoCard, rhs: VideoCard) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}

// MARK: - VideoCardRow
class VideoCardRow: Hashable, Equatable {
    let uuid = UUID()
    let title: String
    let thumbnail: URL?
    let videoCards: [VideoCard]
    
    static let example = VideoCardRow(title: randomString(length: 10), videoCards: [
        VideoCard(videoThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoFocusThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoThumbnailOverlayTimeStatus: "\(Int.random(in: 1..<60)):\(Int.random(in: 1..<60))", videoTitle: randomString(length: 30), videoLine1: randomString(length: 15), videoLine2: "\(Int.random(in: 1..<1000))K Views • \(Int.random(in: 1..<30)) Days Ago", videoID: ""),
        VideoCard(videoThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoFocusThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoThumbnailOverlayTimeStatus: "\(Int.random(in: 1..<60)):\(Int.random(in: 1..<60))", videoTitle: randomString(length: 30), videoLine1: randomString(length: 15), videoLine2: "\(Int.random(in: 1..<1000))K Views • \(Int.random(in: 1..<30)) Days Ago", videoID: ""),
        VideoCard(videoThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoFocusThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoThumbnailOverlayTimeStatus: "\(Int.random(in: 1..<60)):\(Int.random(in: 1..<60))", videoTitle: randomString(length: 30), videoLine1: randomString(length: 15), videoLine2: "\(Int.random(in: 1..<1000))K Views • \(Int.random(in: 1..<30)) Days Ago", videoID: ""),
        VideoCard(videoThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoFocusThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoThumbnailOverlayTimeStatus: "\(Int.random(in: 1..<60)):\(Int.random(in: 1..<60))", videoTitle: randomString(length: 30), videoLine1: randomString(length: 15), videoLine2: "\(Int.random(in: 1..<1000))K Views • \(Int.random(in: 1..<30)) Days Ago", videoID: ""),
        VideoCard(videoThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoFocusThumbnail: URL(string: "https://via.placeholder.com/444x250")!, videoThumbnailOverlayTimeStatus: "\(Int.random(in: 1..<60)):\(Int.random(in: 1..<60))", videoTitle: randomString(length: 30), videoLine1: randomString(length: 15), videoLine2: "\(Int.random(in: 1..<1000))K Views • \(Int.random(in: 1..<30)) Days Ago", videoID: "")
    ])
    
    init(title: String, thumbnail: String = "", videoCards: [VideoCard]) {
        self.title = title
        
        if !thumbnail.isEmpty { self.thumbnail = URL(string: thumbnail) } else { self.thumbnail = nil}
        self.videoCards = videoCards
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(uuid)
    }
    static func == (lhs: VideoCardRow, rhs: VideoCardRow) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}

// MARK: - Supporting Functions
func randomString(length: Int) -> String {
  let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 "
  return String((0..<length).map{ _ in letters.randomElement()! })
}
