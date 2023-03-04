//
//  DefaultTileView.swift
//  ytat
//
//  Created by Isaac Johnson on 2/18/23.
//

import SwiftUI

struct DefaultTileView: View {
    let tile: Tile
    
    var body: some View {
        VStack{
            // Thumbnail
            NavigationLink(destination: NavigationLazyView(PlaybackView(videoID: tile.tileRenderer!.contentId ?? "")), label: {
                //todo: fix navigation for non video items
                //todo: figure out time overlay
                AsyncImage(
                    url: URLFormatter(urlString: (tile.tileRenderer?.header.tileHeaderRenderer.thumbnail.thumbnails[0].url)!), //todo: better selection of thumbnail resolution
                    content: { image in
                    image.resizable()
                        .aspectRatio(CGSize(width: 16, height: 9), contentMode: .fit)
                            .cornerRadius(10)
                },
                placeholder: {
                    ProgressView()
                })
            })
            .buttonStyle(PlainNavigationLinkButtonStyle())
            
            // Title
            Text((tile.tileRenderer?.metadata.tileMetadataRenderer.title.simpleText!)!)
                .lineLimit(2)
                .font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            // Lines
            if tile.tileRenderer?.metadata.tileMetadataRenderer.lines != nil {
                ForEach((tile.tileRenderer?.metadata.tileMetadataRenderer.lines!)!) {line in
                    HStack(spacing: 5) {
                        ForEach(line.lineRenderer.items) {item in
                            generateTileLineText(item: item)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            Spacer()
        }
        .frame(width: 444, height: 400)
        //.border(.red)
    }
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultTileView(tile: Examples.videoTile)
    }
}

