//
//  VideoGridView.swift
//  ytat
//
//  Created by Isaac Johnson on 1/27/23.
//

import SwiftUI
import AVKit


struct VideoGridView: View {
    enum Page {
        case search, home, gaming, news, sports, music, movies, subscriptions
    }
    
    let videoCardRows: [VideoCardRow]
    
    init(topic: String) {
        print("!!!Loading selction: \(topic)")
        self.videoCardRows = callBrowseAPI(url: "https://www.youtube.com/youtubei/v1/browse?key=\(ProcessInfo.processInfo.environment["YTAPIKey"]!)&browseId=\(topic)")
    }
    
    var body: some View {
        //NavigationView {
            ScrollView{
                VStack(spacing:5){
                    ForEach(videoCardRows, id: \.self) {row in
                        VideoCardRowView(videoCardRow: row)
                    }
                }
            }
            //.border(Color.purple)
        //}
    }
}

struct VideoGridView_Previews: PreviewProvider {
    static var previews: some View {
        VideoGridView(topic: "default")
    }
}
