//
//  API Call.swift
//  ytat
//
//  Created by Isaac Johnson on 1/27/23.
//

import Foundation

// MARK: - func sendRequest
func sendRequest(APIRequest: APIRequest) -> Data? {
    
    let url = APIRequest.url
    var request = URLRequest(url: url)
    
    request.httpMethod = APIRequest.method
    request.allHTTPHeaderFields = APIRequest.headers
    
    do {
        request.httpBody = try JSONEncoder().encode(APIRequest.body)
    } catch {
        return nil
    }
    
    let semaphore = DispatchSemaphore(value: 0)
    var responseData: Data?
    
    URLSession.shared.dataTask(with: request) { (data, response, error) in
        defer { semaphore.signal() }
        
        if let error = error {
            print("Error: \(error)")
            return
        }
        
        guard let data = data else {
            return
        }
        
        responseData = data
        
    }.resume()
    
    _ = semaphore.wait(timeout: .distantFuture)
    return responseData
}

// MARK: - class APIRequest
class APIRequest {
    
    let url: URL
    let method: String
    let headers: [String: String]
    let body: RequestBody
    
    init(url: String, method: String, headers: [String: String], body: RequestBody) {
        self.url = URL(string: url)!
        self.method = method
        self.headers = headers
        self.body = body
    }
}

// MARK: - struct RequestBody
struct RequestBody: Codable {
    var context: Context
    var racyCheckOk, contentCheckOk: Bool
    var browseID: String

    enum CodingKeys: String, CodingKey {
        case context, racyCheckOk, contentCheckOk
        case browseID = "browseId"
    }
}

struct Context: Codable {
    var client: Client
    var user: User
}

struct Client: Codable {
    var tvAppInfo: TvAppInfo
    var clientName, clientVersion, clientScreen: String
    var deviceModel: String?
    var webpSupport, animatedWebpSupport: Bool
    var acceptLanguage, acceptRegion, utcOffsetMinutes, visitorData: String
}

struct TvAppInfo: Codable {
    var zylonLeftNav: Bool
}

struct User: Codable {
    var enableSafetyMode, lockedSafetyMode: Bool
}