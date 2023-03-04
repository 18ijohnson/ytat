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
    
    if APIRequest.body != nil {
        do {
            request.httpBody = try JSONEncoder().encode(APIRequest.body)
        } catch {
            return nil
        }
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
    let body: RequestBody?
    
    init(url: String, method: String, headers: [String: String], body: RequestBody? = nil) {
        self.url = URL(string: url)!
        self.method = method
        self.headers = headers
        if body != nil { self.body = body } else { self.body = nil} //todo: replace with ternary
    }
}

// MARK: - struct RequestBody
struct RequestBody: Codable {
    var context: RequestContext
    var racyCheckOk, contentCheckOk: Bool
    var browseID: String

    enum CodingKeys: String, CodingKey {
        case context, racyCheckOk, contentCheckOk
        case browseID = "browseId"
    }
}

struct RequestContext: Codable {
    var client: RequestClient
    var user: RequestUser
}

struct RequestClient: Codable {
    var tvAppInfo: TvAppInfo
    var clientName, clientVersion, clientScreen: String
    var deviceModel: String?
    var webpSupport, animatedWebpSupport: Bool
    var acceptLanguage, acceptRegion, utcOffsetMinutes, visitorData: String
}

struct TvAppInfo: Codable {
    var zylonLeftNav: Bool
}

struct RequestUser: Codable {
    var enableSafetyMode, lockedSafetyMode: Bool
}
