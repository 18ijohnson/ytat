//
//  Browse Request.swift
//  ytat
//
//  Created by Isaac Johnson on 1/30/23.
//

import Foundation

func callBrowseAPI(topic: String) -> BrowseResponse {
    let url = "https://www.youtube.com/youtubei/v1/browse?key=\(ProcessInfo.processInfo.environment["YTAPIKey"]!)&browseId=\(topic)"
    let headers = ["Content-Type": "application/json"]
    let requestBody = RequestBody(context: RequestContext(client: RequestClient(tvAppInfo: TvAppInfo(zylonLeftNav: true), clientName: "TVHTML5", clientVersion: "7.20220118.09.00", clientScreen: "WATCH", webpSupport: false, animatedWebpSupport: false, acceptLanguage: "en-US", acceptRegion: "US", utcOffsetMinutes: "-480", visitorData: "CgtXSE5yT3JKdTBfOCi-4seeBg%3D%3D"), user: RequestUser(enableSafetyMode: false, lockedSafetyMode: false)), racyCheckOk: true, contentCheckOk: true, browseID: "default")
    
    let response = sendRequest(APIRequest: APIRequest(url: url, method: "POST", headers: headers, body: requestBody))
    
//    var responseString = String(data: response!, encoding: .utf8)
//    print("!!!Response: \(responseString)")
    
    let browseResponse = try! JSONDecoder().decode(BrowseResponse.self, from: response!)

    return browseResponse
}
