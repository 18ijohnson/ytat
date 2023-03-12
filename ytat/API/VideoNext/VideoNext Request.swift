//
//  VideoNext Request.swift
//  ytat
//
//  Created by Isaac Johnson on 3/11/23.
//

import Foundation

func callVideoNextAPI(videoID: String) -> VideoNextResponse? {
    let url = "https://www.youtube.com/youtubei/v1/next?key=\(ProcessInfo.processInfo.environment["YTAPIKey"]!)&videoId=\(videoID)"
    let headers = ["Content-Type": "application/json"]
    let requestBody = RequestBody(context: RequestContext(client: RequestClient(tvAppInfo: TvAppInfo(zylonLeftNav: true), clientName: "TVHTML5", clientVersion: "7.20220118.09.00", clientScreen: "WATCH", webpSupport: false, animatedWebpSupport: false, acceptLanguage: "en-US", acceptRegion: "US", utcOffsetMinutes: "-480", visitorData: "CgtXSE5yT3JKdTBfOCi-4seeBg%3D%3D"), user: RequestUser(enableSafetyMode: false, lockedSafetyMode: false)), racyCheckOk: true, contentCheckOk: true, browseID: "default")
    
    let response = sendRequest(APIRequest: APIRequest(url: url, method: "POST", headers: headers, body: requestBody))
    
//    var responseString = String(data: response!, encoding: .utf8)
//    print("!!!Response: \(responseString)")
    
    do{
        let videoNextResponse = try JSONDecoder().decode(VideoNextResponse.self, from: response!)
        return videoNextResponse
    } catch {
        print("!!!Guard Erorr: \(error)")
        return nil
    }
}
