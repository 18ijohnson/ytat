//
//  Examples.swift
//  ytat
//
//  Created by Isaac Johnson on 2/19/23.
//

import Foundation

struct Examples {
    
    //MARK: - Tile
    static let channelTile = Tile(tileRenderer: TileRenderer(
            style: "TILE_STYLE_YTLR_ROUND",
            contentType: "TILE_CONTENT_TYPE_CHANNEL",
            contentId: "UC_3RlpUtcQYPCoaq5WaDybg",
            header: TileHeader(
                tileHeaderRenderer: TileHeaderRenderer(
                    thumbnail: TileThumbnail(
                        thumbnails: [
                            TileThumbnailItem(url: "//yt3.googleusercontent.com/ytc/AL5GRJWJMp5vJDawIgoFIrlJU8BcR_xuI7bBNlAYeqjagQ=s88-c-k-c0x00ffffff-no-rj-mo", width: 88, height: 88),
                            TileThumbnailItem(url: "//yt3.googleusercontent.com/ytc/AL5GRJWJMp5vJDawIgoFIrlJU8BcR_xuI7bBNlAYeqjagQ=s176-c-k-c0x00ffffff-no-rj-mo", width: 176, height: 176)
                        ])
                )),
            metadata: TileMetadata(
                tileMetadataRenderer: TileMetadataRenderer(
                    title: CText(
                        simpleText: "Swift"
                    ),
                    lines: [
                        TileLine(lineRenderer: TileLineRenderer(items: [
                            TileLineItem(lineItemRenderer: TileLineItemRenderer(
                                text: CText(
                                    simpleText: "@SwiftMadden"
                                )
                            ))
                        ])),
                        TileLine(lineRenderer: TileLineRenderer(items: [
                            TileLineItem(lineItemRenderer: TileLineItemRenderer(
                                text: CText(
                                    simpleText: "164K subscribers"
                                )
                            ))
                        ]))
                    ]
                ))))
    
    static let videoTile = Tile(tileRenderer: TileRenderer(
        style: "TILE_STYLE_YTLR_DEFAULT",
        contentType: "TILE_CONTENT_TYPE_VIDEO",
        contentId: "g61iP9pkdw4",
        header: TileHeader(tileHeaderRenderer: TileHeaderRenderer(
            thumbnail: TileThumbnail(thumbnails: [
                TileThumbnailItem(url: "https://i.ytimg.com/vi/g61iP9pkdw4/default.jpg", width: 120, height: 90),
                TileThumbnailItem(url: "https://i.ytimg.com/vi/g61iP9pkdw4/mqdefault.jpg", width: 320, height: 180),
                TileThumbnailItem(url: "https://i.ytimg.com/vi/g61iP9pkdw4/hqdefault.jpg?sqp=-oaymwEXCLwDEPoBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCV_cvk1l-htSK-J6mP_OF-NS8zCA", width: 444, height: 250),
                TileThumbnailItem(url: "https://i.ytimg.com/vi/g61iP9pkdw4/hqdefault.jpg", width: 480, height: 360),
                TileThumbnailItem(url: "https://i.ytimg.com/vi/g61iP9pkdw4/sddefault.jpg", width: 640, height: 480),
                TileThumbnailItem(url: "https://i.ytimg.com/vi/g61iP9pkdw4/maxresdefault.jpg", width: 1920, height: 1080)])
            ,
            thumbnailOverlays: [
                [
                    "thumbnailOverlayTimeStatusRenderer": TileThumbnailOverlay(
                        text: CText(
                            simpleText: "8:08")
                        ,
                        style: "DEFAULT")]]))
        ,
        metadata: TileMetadata(tileMetadataRenderer: TileMetadataRenderer(
            title: CText(simpleText: "Training Variety Packs Are DEAD… Additional Text to make this title long enough to overflow"),
            lines: [
                TileLine(lineRenderer: TileLineRenderer(
                    items: [
                        TileLineItem(lineItemRenderer: TileLineItemRenderer(
                            text: CText(
                            runs: [
                                CTextRun(text: "Swift")])))]))
                ,
                TileLine(lineRenderer: TileLineRenderer(
                    items: [
                        TileLineItem(lineItemRenderer: TileLineItemRenderer(
                            badge: CBadge(
                                metadataBadgeRenderer: TileMetadataBadgeRenderer(
                                    style: "BADGE_STYLE_TYPE_SIMPLE", label: "4K"
                                ))
                        )),
                        TileLineItem(lineItemRenderer: TileLineItemRenderer(
                            text: CText(
                                simpleText: "7.9K views")))
                        ,
                        TileLineItem(lineItemRenderer: TileLineItemRenderer(
                            text: CText(
                            simpleText: "•")))
                        ,
                        TileLineItem(lineItemRenderer: TileLineItemRenderer(
                            text: CText(
                            simpleText: "6 hours ago")))]))]))))
    
    //MARK: - Shelf
    static let searchShelf = Shelf(
        shelfRenderer: ShelfRenderer(
            headerRenderer: HeaderRenderer(
                shelfHeaderRenderer: ShelfHeaderRenderer(
                    title: CText(
                        simpleText: "Search results for swift"
                    )
            )),
            content: ShelfContent(
                horizontalListRenderer: ShelfHorizontalListRenderer(
                    items: [
                        Examples.channelTile,
                        Examples.videoTile,
                        Examples.videoTile,
                        Examples.channelTile,
                        Examples.videoTile,
                        Examples.videoTile,
                    ],
                    continuations: [
                        Continuation(
                            nextContinuationData: NextContinuationData(
                                continuation: "EsIDEgVzd2lmdBq4A1NCU0NBUmhWUTE4elVteHdWWFJqVVZsUVEyOWhjVFZYWVVSNVltZUNBUXRuTmpGcFVEbHdhMlIzTklJQkN5MUpWVXBwZUVwTWJ6aFpnZ0VMWWpGcllreDNkbkYxWjJ1Q0FRdFBWVGhDYVdwa1IyVk9OSUlCQzA5VVh6VnZaRmxYVkZKSmdnRUxkRU5ZUjBwUldWbzVTa0dDQVJoVlEwVm9Ra1p0U2pkQ1l6RTRlWEp2VjFKWmFUTkZWMmVDQVF0aU4xRnNXRE41VWpKNGM0SUJHRlZEY1VWRFlVbzRSMkZuYm00M1dVTmlVRVY2VjBnMlo0SUJDemhZWnpkRk9YTm9jVEJWZ2dFTFZuVk9TWE5aTmtwa1ZYZUNBUXRsTFU5U2FFVkZPVlpXWjRJQkN6QmhaRWhCWDJGSlh6UlpnZ0VMUTNkQk1WWlhVREJNWkhlQ0FRdE9PV3BPTkZaQlkwNXNPSUlCQzI1QlkyaE5ZM1JZTkZsQmdnRUxNM1J0WkMxRGJIQktlRUdDQVF0dVpsZHNiM1EyYUY5S1RZSUJDM2wxYnpVd0xWUnBTMmR2c2dFR0NnUUlBaEFDGIHg6Bg%3D"
                            )
                        )
                    ]
                ))
        ))
    
    //MARK: - Section
    static let defaultSection = SectionList(
        sectionListRenderer: SectionListRenderer(
            contents: [
                Examples.searchShelf,
                Examples.searchShelf,
                Examples.searchShelf,
                Examples.searchShelf
            ],
            continuations: [
                Continuation(
                    nextContinuationData: NextContinuationData(
                        continuation: ""
                    )
                )
            ]
        )
    )
}
