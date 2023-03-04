//
//  RoundTileView.swift
//  ytat
//
//  Created by Isaac Johnson on 2/19/23.
//

import SwiftUI

struct RoundTileView: View {
    let tile: Tile
    
    var body: some View {
        VStack{
            // Thumbnail
            NavigationLink(destination: {}, label: {
                //todo: figure out time overlay
                AsyncImage(
                    url: URLFormatter(urlString: (tile.tileRenderer?.header.tileHeaderRenderer.thumbnail.thumbnails[1].url)!), //todo: better selection of thumbnail resolution
                    content: { image in
                    image.resizable()
                        .aspectRatio(CGSize(width: 1, height: 1), contentMode: .fit)
                            .cornerRadius(1000)
                            .frame(alignment: .top)
                },
                placeholder: {
                    ProgressView()
                })
            })
            .buttonStyle(RoundNavigationLinkButtonStyle())
            // Title
            Text((tile.tileRenderer?.metadata.tileMetadataRenderer.title.simpleText!)!)
                .lineLimit(2)
                .font(.headline)
            
            // Lines
            if tile.tileRenderer?.metadata.tileMetadataRenderer.lines != nil {
                ForEach((tile.tileRenderer?.metadata.tileMetadataRenderer.lines!)!) {line in
                    HStack(spacing: 0) {
                        ForEach(line.lineRenderer.items) {item in
                            generateTileLineText(item: item)
                        }
                    }
                }
            }
            Spacer()
        }
        .frame(width: 250, height: 400)
        //.border(.green)
    }
}

struct RoundTileView_Previews: PreviewProvider {
    static var previews: some View {
        RoundTileView(tile: Examples.channelTile)
    }
}
