//
//  PlaybackView.swift
//  ytat
//
//  Created by Isaac Johnson on 1/29/23.
//

import SwiftUI
import AVKit

struct PlaybackView: View {
    
    @State var playerViewController = AVPlayerViewController()
    @State var player: AVPlayer?
    
    let videoInfo: VideoInfoResponse
        
    init(videoID: String) {
        self.videoInfo = callVideoIDAPI(videoID: videoID)
    }
    
    var body: some View {
        VideoPlayer(player: player)
            .ignoresSafeArea()
            .onAppear() {
                player = AVPlayer(url: URL(string: videoInfo.streamingData.hlsManifestURL)!)
                player?.currentItem?.externalMetadata = makeExternalMetadata(videoInfo: videoInfo)
                player?.play()
                //playerViewController.player = player
                //playerViewController.transportBarCustomMenuItems = menuItems
                //playerViewController.player?.play()
            }
            .onDisappear() {
                player?.pause()
            }
    }
}

func makeExternalMetadata(videoInfo: VideoInfoResponse) -> [AVMetadataItem] {
    var metadata = [AVMetadataItem]()
    
    let titleItem = makeMetadataItem(.commonIdentifierTitle, value: videoInfo.videoDetails.title)
    metadata.append(titleItem)
    
    let descItem = makeMetadataItem(.commonIdentifierDescription, value: videoInfo.videoDetails.shortDescription!)
    metadata.append(descItem)
    
    let authorItem = makeMetadataItem(.commonIdentifierAuthor, value: videoInfo.videoDetails.author)
    metadata.append(authorItem)
    
    return metadata
}

private func makeMetadataItem(_ identifier: AVMetadataIdentifier, value: Any) -> AVMetadataItem {
    let item = AVMutableMetadataItem()
    item.identifier = identifier
    item.value = value as? NSCopying & NSObjectProtocol
    item.extendedLanguageTag = "und"
    return item.copy() as! AVMetadataItem
}
    
    
//struct PlaybackView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaybackView(videoID: "87O_KvJTkT8")
//    }
//}
