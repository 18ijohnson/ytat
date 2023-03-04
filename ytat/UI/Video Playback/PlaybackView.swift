//
//  PlaybackView.swift
//  ytat
//
//  Created by Isaac Johnson on 1/29/23.
//

import SwiftUI
import AVKit

//todo: fix playback for non-standard videos (ie movies, shorts, livestreams)
struct PlaybackView: View {
    @State private var videoInfo: VideoInfoResponse
    
    init(videoID: String) {
        _videoInfo = State(initialValue: callVideoIDAPI(videoID: videoID))
    }
    
    var body: some View {
        VideoPlayerView(videoInfo: $videoInfo)
            .ignoresSafeArea()
    }
}

//struct PlaybackView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaybackView(videoID: "87O_KvJTkT8")
//    }
//}
