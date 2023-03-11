//
//  DefaultShelfView.swift
//  ytat
//
//  Created by Isaac Johnson on 2/19/23.
//

import SwiftUI

struct DefaultShelfView: View {
    @State var shelf: Shelf
    @FocusState private var focusedIndex: Int?

    var body: some View {
        VStack(spacing: 5) {
            if shelf.shelfRenderer?.headerRenderer.shelfHeaderRenderer.title?.simpleText != nil {
                Text(shelf.shelfRenderer?.headerRenderer.shelfHeaderRenderer.title?.simpleText ?? "")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 25)
            } else if shelf.shelfRenderer?.headerRenderer.shelfHeaderRenderer.title?.runs != nil {
                Text(handleRuns(runs: (shelf.shelfRenderer?.headerRenderer.shelfHeaderRenderer.title?.runs)!))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 25)
            }
            ScrollView(.horizontal) {
                LazyHGrid(rows: [GridItem()], spacing: 20) {
                    Spacer(minLength: 5)
                    ForEach((shelf.shelfRenderer?.content.horizontalListRenderer.items)!.indices, id: \.self) { index in
                        getTileView(tile: (shelf.shelfRenderer?.content.horizontalListRenderer.items[index])!)
                            .focused($focusedIndex, equals: index)
                    }
                    if shelf.shelfRenderer?.content.horizontalListRenderer.continuations != nil {
                        LoadingTileView()
                    } else {
                        Spacer()
                    }
                }
            }
            .frame(height: 415)
        }
        .frame(maxWidth: .infinity)
        .onChange(of: focusedIndex) { newIndex in
            if let index = newIndex, index == shelf.shelfRenderer?.content.horizontalListRenderer.items.indices.dropLast().last {
                print("!!!End of shelf")
                if shelf.shelfRenderer?.content.horizontalListRenderer.continuations != nil {
                    let continuation = getContinuations(shelf: shelf)
                    let continuationResponse = callContinuationAPI(continuation: continuation)

                    shelf.shelfRenderer?.content.horizontalListRenderer.continuations = continuationResponse.continuationContents.horizontalListContinuation.continuations
                    shelf.shelfRenderer?.content.horizontalListRenderer.items += continuationResponse.continuationContents.horizontalListContinuation.items

                    print("!!!Continuation - Shelf: \(getShelfTitle(shelf: shelf))")
                }
            }
        }
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

private func getShelfTitle(shelf: Shelf) -> String {
    guard let title = shelf.shelfRenderer?.headerRenderer.shelfHeaderRenderer.title else { return "" }
    
    if title.simpleText != nil { return title.simpleText! }
    else if title.runs != nil { return handleRuns(runs: title.runs!) }
    
    return ""
}

func getContinuations(shelf: Shelf) -> String {
    //todo make this more general and check if multiple continuations are possible
    guard let continuations = shelf.shelfRenderer?.content.horizontalListRenderer.continuations else { return "" }
    return continuations[0].nextContinuationData.continuation
}

func handleRuns(runs: [CTextRun]) -> String {
    //todo move this to a better place
    var text = ""
    for run in runs {
        text += run.text ?? ""
    }
    return text
}


struct DefaultShelfView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultShelfView(shelf: Examples.searchShelf)
    }
}

//                    if shelf.shelfRenderer?.content.horizontalListRenderer.continuations != nil {
//                        ProgressView()
//                            .task {
//                                let continuation = getContinuations(shelf: shelf)
//                                let continuationResponse = callContinuationAPI(continuation: continuation)
//
//                                shelf.shelfRenderer?.content.horizontalListRenderer.continuations = continuationResponse.continuationContents.horizontalListContinuation.continuations
//                                shelf.shelfRenderer?.content.horizontalListRenderer.items += continuationResponse.continuationContents.horizontalListContinuation.items
//
//                                print("!!!Continuation - Shelf: \(getShelfTitle(shelf: shelf))")
//                            }
//                    }
