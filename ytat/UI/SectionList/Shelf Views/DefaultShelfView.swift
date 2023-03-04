//
//  DefaultShelfView.swift
//  ytat
//
//  Created by Isaac Johnson on 2/19/23.
//

import SwiftUI

struct DefaultShelfView: View {
    @State var shelf: Shelf
    
    var body: some View {
        VStack(spacing: 0) {
            if shelf.shelfRenderer?.headerRenderer.shelfHeaderRenderer.title?.simpleText != nil {
                Text(shelf.shelfRenderer?.headerRenderer.shelfHeaderRenderer.title?.simpleText ?? "")
                    .frame(maxWidth: .infinity, alignment: .leading)
            } else if shelf.shelfRenderer?.headerRenderer.shelfHeaderRenderer.title?.runs != nil {
                Text(handleRuns(runs: (shelf.shelfRenderer?.headerRenderer.shelfHeaderRenderer.title?.runs)!))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            ScrollView(.horizontal) {
                HStack(spacing: 10){
                    ForEach((shelf.shelfRenderer?.content.horizontalListRenderer.items)!) {item in
                        getTileView(tile: item)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        //.border(.blue)
    }
}

private func getTileView(tile: Tile) -> AnyView {
    switch tile.tileRenderer?.style {
    case "TILE_STYLE_YTLR_ROUND":
        return AnyView(RoundTileView(tile: tile))
    default:
        return AnyView(DefaultTileView(tile: tile))
    }
}

struct DefaultShelfView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultShelfView(shelf: Examples.searchShelf)
    }
}

func handleRuns(runs: [CTextRun]) -> String {
    var text = ""
    for run in runs {
        text += run.text ?? ""
    }
    return text
}
