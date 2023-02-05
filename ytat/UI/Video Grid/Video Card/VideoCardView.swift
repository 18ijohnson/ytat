//
//  VideoCardView.swift
//  ytat
//
//  Created by Isaac Johnson on 1/27/23.
//

import SwiftUI

struct VideoCardView: View, Hashable {
    
    @Environment(\.isFocused) var isFocused: Bool
//    @State private var isFocused = false
//    @State private var is2Focused = false
    
    var uuid: String = UUID().uuidString
    var videoCard: VideoCard
    var thumbnailURL: URL
    var title: String
    var channel: String
    var line2: String
    var thumbnailTime: String
    var videoId: String
    var playbackURL: String = "https://bit.ly/swswift"
    
    init(videoCard: VideoCard) {
        self.videoCard = videoCard
        self.thumbnailURL = videoCard.videoThumbnail
        self.title = videoCard.videoTitle
        self.channel = videoCard.videoLine1
        self.line2 = videoCard.videoLine2
        self.thumbnailTime = videoCard.videoThumbnailOverlayTimeStatus
        self.videoId = videoCard.videoID
                
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    
    var body: some View {
        
            VStack(alignment: .leading){
                //            AsyncImage(url: thumbnailURL)
                //                .cornerRadius(20)
                //                .aspectRatio(contentMode: .fit)
                //                .frame(width: 444, height: 250)
                
                NavigationLink(destination: NavigationLazyView(PlaybackView(videoID: videoId))){
                    AsyncImage(
                        url: thumbnailURL,
                        content: { image in
                            image.resizable()
                                .aspectRatio(CGSize(width: 16, height: 9), contentMode: .fit)
                                .frame(width: 444, height: 250)
                                .cornerRadius(10)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                }
                .buttonStyle(PlainNavigationLinkButtonStyle())
                
                SwiftUI.Text(title)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                SwiftUI.Text(channel)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
                    .font(.system(size: 28))
                    .frame(maxWidth: .infinity, alignment: .leading)
                SwiftUI.Text(line2)
                    .foregroundColor(Color.gray)
                    .lineLimit(1)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 26))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .frame(width: 444, alignment: .center)
            //.border(Color.red)
    }
        
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(uuid)
    }
    static func == (lhs: VideoCardView, rhs: VideoCardView) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}

struct VideoCardView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCardView(videoCard: VideoCard.example)
    }
}
