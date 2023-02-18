//
//  Search Request.swift
//  ytat
//
//  Created by Isaac Johnson on 2/17/23.
//

import Foundation

func callSearchAPI(searchText: String) -> SearchResponse? {
    let url = "https://www.youtube.com/youtubei/v1/search?key=\(ProcessInfo.processInfo.environment["YTAPIKey"]!)&query=\(searchText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")"
    let headers = ["Content-Type": "application/json"]
    let requestBody = RequestBody(context: Context(client: Client(tvAppInfo: TvAppInfo(zylonLeftNav: true), clientName: "TVHTML5", clientVersion: "7.20220118.09.00", clientScreen: "WATCH", webpSupport: false, animatedWebpSupport: false, acceptLanguage: "en-US", acceptRegion: "US", utcOffsetMinutes: "-480", visitorData: "CgtXSE5yT3JKdTBfOCi-4seeBg%3D%3D"), user: User(enableSafetyMode: false, lockedSafetyMode: false)), racyCheckOk: true, contentCheckOk: true, browseID: "default")
    
    let response = sendRequest(APIRequest: APIRequest(url: url, method: "POST", headers: headers, body: requestBody))
    var searchResponse: SearchResponse?
    do {
        searchResponse = try JSONDecoder().decode(SearchResponse.self, from: response!)
    } catch {
        print(error)
        return nil
    }
    
    return searchResponse
}

func callSearchSuggestionsAPI(searchText: String) -> [String]? {
    let url = "https://clients1.google.com/complete/search?client=youtube-lr&ds=yt&xhr=t&oe=utf-8&hl=en&gl=us&q=\(searchText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")"
    let headers = ["Content-Type": "application/json"]
    
    let response = sendRequest(APIRequest: APIRequest(url: url, method: "GET", headers: headers))

    do {
        let jsonResponse = try JSONSerialization.jsonObject(with: response!) as? [Any]
        let data = jsonResponse![1] as? [[Any]]
        return (data?.compactMap { $0[0] as? String })!
    } catch {
        return nil
    }
}
