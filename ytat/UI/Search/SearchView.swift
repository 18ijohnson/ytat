//
//  SearchView.swift
//  ytat
//
//  Created by Isaac Johnson on 2/17/23.
//

import SwiftUI


struct SearchView: View {
    @State var searchResults: SearchResponse?
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            SearchBar(text: $searchText, results: $searchResults) {
                if searchResults != nil {
                    DefaultSectionView(section: searchResults!.contents)
                }
            }
        }
    }
}

//private func getVideoCards(shelf: SearchContentItem) -> [VideoCard] {
//    var videoCards: [VideoCard] = []
//    let items = shelf.shelfRenderer?.content?.horizontalListRenderer?.items
//    for video in items! {
//        let thumbnail = (video.tileRenderer?.header?.tileHeaderRenderer?.thumbnail?.thumbnails?[0].url)!//todo: select appropriate thumbnail
//        let thumbnailTime = video.tileRenderer?.header?.tileHeaderRenderer?.thumbnailOverlays?[0].thumbnailOverlayTimeStatusRenderer?.text?.simpleText ?? ""
//        let title = video.tileRenderer?.metadata?.tileMetadataRenderer?.title?.simpleText ?? ""
//        //let line1 = video.tileRenderer?.metadata?.tileMetadataRenderer?.lines[0].lineRenderer.items[0].lineItemRenderer.text?.runs[0].text
//        //let line2 = video.tileRenderer?.metadata?.tileMetadataRenderer?.lines[1].lineRenderer.items[0].lineItemRenderer.text?.runs[0].text
//        let videoId = video.tileRenderer?.onSelectCommand?.watchEndpoint?.videoId ?? ""
//        
//        videoCards.append(VideoCard(videoThumbnail: URL(string: thumbnail)!, videoThumbnailOverlayTimeStatus: thumbnailTime, videoTitle: title, videoLine1: "line1", videoLine2: "line2", videoID: videoId))
//    }
//    return videoCards
//}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
