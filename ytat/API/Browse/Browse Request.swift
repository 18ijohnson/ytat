//
//  Browse Request.swift
//  ytat
//
//  Created by Isaac Johnson on 1/30/23.
//

import Foundation

func callBrowseAPI(url: String) -> [VideoCardRow] {
    
    let requestBody = RequestBody(context: Context(client: Client(tvAppInfo: TvAppInfo(zylonLeftNav: true), clientName: "TVHTML5", clientVersion: "7.20220118.09.00", clientScreen: "WATCH", webpSupport: false, animatedWebpSupport: false, acceptLanguage: "en-US", acceptRegion: "US", utcOffsetMinutes: "-480", visitorData: "CgtXSE5yT3JKdTBfOCi-4seeBg%3D%3D"), user: User(enableSafetyMode: false, lockedSafetyMode: false)), racyCheckOk: true, contentCheckOk: true, browseID: "default")
    let headers = ["Content-Type": "application/json"]
    
    let response = sendRequest(APIRequest: APIRequest(url: url, method: "POST", headers: headers, body: requestBody))
    let browseResponse: BrowseResponse?
    
    do {
        browseResponse = try JSONDecoder().decode(BrowseResponse.self, from: response!)
    } catch {
        print("!!!Error: \(error)")
        browseResponse = nil
    }
    
    let videoCardRows = convertBrowseResponse(browseResponse: browseResponse!)
    
    return videoCardRows
}

func convertBrowseResponse(browseResponse: BrowseResponse) -> [VideoCardRow] {
    let rows = browseResponse.contents?.tvBrowseRenderer?.content?.tvSurfaceContentRenderer?.content?.sectionListRenderer?.contents
    
    var videoCardRows = [VideoCardRow]()
    
    for row in rows! where row.shelfRenderer != nil {
        var rowTitle: String
        var videoCards = [VideoCard]()
        
        // VideoCardRow title
        rowTitle = row.shelfRenderer?.headerRenderer?.shelfHeaderRenderer?.title?.runs?[0].text ?? ""
        
        // VideoCardRow videoCards
        let videos = row.shelfRenderer?.content?.horizontalListRenderer?.items
        for video in videos! {
            var videoThumbnail, videoFocusThumbnail, videoThumbnailOverlayTimeStatus: String
            var videoTitle, videoID: String
            var videoLine1: String = "", videoLine2: String = "", videoLine3: String = ""
            
            // VideoCard thumnail
            var thumbnails = video.tileRenderer?.header?.tileHeaderRenderer?.thumbnail?.thumbnails
            if thumbnails?.count ?? 0 > 1 {
                thumbnails = thumbnails?.filter { thumbnail in
                        return thumbnail.width == 444
                }
            }
            videoThumbnail = thumbnails?.count ?? 0 > 0 ? thumbnails?[0].url ?? "https://via.placeholder.com/444x250" : "https://via.placeholder.com/444x250"
           
            // VideoCard focusThumbnail
            videoFocusThumbnail = video.tileRenderer?.header?.tileHeaderRenderer?.onFocusThumbnail?.thumbnails?[0].url ?? "https://via.placeholder.com/444x250"
            
            // VideoCard thumbnailOverlayTimeStatus
            videoThumbnailOverlayTimeStatus = video.tileRenderer?.header?.tileHeaderRenderer?.thumbnailOverlays?[0].thumbnailOverlayTimeStatusRenderer?.text?.simpleText ?? ""
            
            // VideoCard title
            videoTitle = (video.tileRenderer?.metadata?.tileMetadataRenderer?.title?.simpleText ?? "") as String
            
            // VideoCard line1
            if video.tileRenderer?.metadata?.tileMetadataRenderer?.lines?.count ?? 0 > 0 {
                let videoLine1Items = video.tileRenderer?.metadata?.tileMetadataRenderer?.lines?[0].lineRenderer?.items
                for item in videoLine1Items! {
                    videoLine1 += item.lineItemRenderer.badge?.metadataBadgeRenderer?.style ?? ""
                    videoLine1 += item.lineItemRenderer.text?.runs?[0].text ?? ""
                    videoLine1 += item.lineItemRenderer.text?.simpleText ?? ""
                }
                videoLine1 = videoLine1.replacingOccurrences(of: "•", with: " • ")
            }
            
            // VideoCard line2
            if video.tileRenderer?.metadata?.tileMetadataRenderer?.lines?.count ?? 0 > 1 {
                let videoLine2Items = video.tileRenderer?.metadata?.tileMetadataRenderer?.lines?[1].lineRenderer?.items
                for item in videoLine2Items! {
                    videoLine2 += item.lineItemRenderer.badge?.metadataBadgeRenderer?.label ?? ""
                    videoLine2 += item.lineItemRenderer.text?.runs?[0].text ?? ""
                    videoLine2 += item.lineItemRenderer.text?.simpleText ?? ""
                }
                videoLine2 = videoLine2.replacingOccurrences(of: "•", with: " • ")
            }
            
            // VideoCard videoID
            videoID = video.tileRenderer?.onSelectCommand?.commandExecutorCommand?.commands?[0].watchEndpoint?.videoID ?? ""
            videoID = video.tileRenderer?.onSelectCommand?.watchEndpoint?.videoID ?? ""
            
            videoCards.append(VideoCard(videoThumbnail: URL(string: videoThumbnail)!, videoFocusThumbnail: URL(string: videoFocusThumbnail)!, videoThumbnailOverlayTimeStatus: videoThumbnailOverlayTimeStatus, videoTitle: videoTitle, videoLine1: videoLine1, videoLine2: videoLine2, videoLine3: videoLine3, videoID: videoID))
        }
        
        videoCardRows.append(VideoCardRow(title: rowTitle, videoCards: videoCards))
    }
    
    return videoCardRows
}
