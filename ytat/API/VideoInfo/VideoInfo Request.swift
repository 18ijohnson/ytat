//
//  VideoInfo Request.swift
//  ytat
//
//  Created by Isaac Johnson on 1/30/23.
//

import Foundation

func callVideoIDAPI(videoID: String) -> VideoInfoResponse {
    let validatedVideoID = videoID != "" ? videoID : "TJ2ifmkGGus"
    print("!!!Calling VideoInfo API with videoID: \(validatedVideoID)")
    let requestBody = RequestBody(context: RequestContext(client: RequestClient(tvAppInfo: TvAppInfo(zylonLeftNav: true), clientName: "IOS", clientVersion: "17.33.2", clientScreen: "WATCH", deviceModel: "iPhone14,3", webpSupport: false, animatedWebpSupport: false, acceptLanguage: "en-US", acceptRegion: "US", utcOffsetMinutes: "-480", visitorData: "CgtXSE5yT3JKdTBfOCi-4seeBg%3D%3D"), user: RequestUser(enableSafetyMode: false, lockedSafetyMode: false)), racyCheckOk: true, contentCheckOk: true, browseID: "default")
    let headers = ["Content-Type": "application/json"]
    let url = "https://www.youtube.com/youtubei/v1/player?key=\(ProcessInfo.processInfo.environment["YTAPIKey"]!)&videoId=\(validatedVideoID)"
    
    let response = sendRequest(APIRequest: APIRequest(url: url, method: "POST", headers: headers, body: requestBody))
    let videoInfoResponse: VideoInfoResponse?
    
    do {
        videoInfoResponse = try JSONDecoder().decode(VideoInfoResponse.self, from: response!)
    } catch {
        print("!!!Error: \(error)")
        videoInfoResponse = nil
    }
    
    return videoInfoResponse!
}
