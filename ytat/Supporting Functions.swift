//
//  Supporting Functions.swift
//  ytat
//
//  Created by Isaac Johnson on 2/19/23.
//

import Foundation
import SwiftUI

func URLFormatter(urlString: String) -> URL {
    let formattedString: String
    
    if urlString.starts(with: "//") {
        formattedString = "https:" + urlString
    } else {
        formattedString = urlString
    }
    
    return URL(string: formattedString)!
}

func generateTileLineText(item: TileLineItem) -> AnyView {
    //todo: make this dry
    if item.lineItemRenderer.text != nil {
        var text = ""
        if item.lineItemRenderer.text?.simpleText != nil {
            text = item.lineItemRenderer.text?.simpleText ?? ""
        } else if item.lineItemRenderer.text?.runs != nil {
            for r in item.lineItemRenderer.text!.runs! {
                text += r.text ?? ""
            }
        }
        return AnyView(Text(text)
                .lineLimit(1)
                .font(.system(size: 24))
                .foregroundColor(Color.gray))
    } else if item.lineItemRenderer.badge != nil {
        let label = item.lineItemRenderer.badge?.metadataBadgeRenderer.label ?? ""
        if item.lineItemRenderer.badge?.metadataBadgeRenderer.style == "BADGE_STYLE_TYPE_SIMPLE" {
            return AnyView(Text(" " + label + " ")
                .lineLimit(1)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(Color.black)
                .background(Color.gray)
                .cornerRadius(5)
            )
        } else if item.lineItemRenderer.badge?.metadataBadgeRenderer.style == "BADGE_STYLE_TYPE_YPC" {
            return AnyView(Text(" " + label + " ")
                .lineLimit(1)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(Color.black)
                .background(Color.gray)
                .cornerRadius(5)
            )
        } else if item.lineItemRenderer.badge?.metadataBadgeRenderer.style == "BADGE_STYLE_TYPE_AD_STARK" {
            return AnyView(Text(" " + label + " ")
                .lineLimit(1)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(Color.black)
                .background(Color.yellow)
                .cornerRadius(5)
            )
        } else {
            print("!!!Unrecognized Badge Style: \(String(describing: item.lineItemRenderer.badge?.metadataBadgeRenderer.style))")
            return AnyView(Text(label)
                .lineLimit(1)
                .font(.system(size: 24, weight: .semibold))
                .foregroundColor(Color.red)
            )
        }
    }
    return AnyView(Text("!!!Unknown Item"))
}


// HLSParser source: https://github.com/engmahsa/HLSParser
//public struct HLSParser {
//
//    public typealias success = (_ parsedResponse:[Any], _ data:Data?) -> Void
//    public typealias failed = (_ error:Error?) -> Void
//
//    public init() {}
//
//    public func parseStreamTags(link: String,successBlock: @escaping success, failedBlock:@escaping failed) {
//        var request = URLRequest(url: URL(string: link)!)
//        request.httpMethod = "Get"
//        var resultArr = [Any]()
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//
//            // Check if an error occured
//
//            guard let data = data, error == nil else { // check for fundamental networking error
//                print("error=\(String(describing: error))")
//                failedBlock(error) // return data & close
//                return
//            }
//            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 { // check for http errors
//                print("statusCode should be 200, but is \(httpStatus.statusCode)")
//                print("response = \(String(describing: response))")
//            }
//
//            let responseString = String(data: data, encoding: .utf8)
//            print("responseString = \(String(describing: responseString))")
//
//            let tmpStr = "#EXT-X-STREAM-INF:"
//            let ArrayCop = responseString?.components(separatedBy: tmpStr)
//            var croppedArr =  [Any]()
//            croppedArr =  Array((ArrayCop?.dropFirst())!)
//            let enterChar = "\n"
//            let spaceChar = ","
//
//
//            for i in 0..<(croppedArr.count) {
//                var parsedDic = [String:Any]()
//                let tmpArr1 =  ((croppedArr[i] as! String).trimmingCharacters(in: .whitespacesAndNewlines) ).components(separatedBy: enterChar)
//                parsedDic["LINK"] = tmpArr1.last!
//                let finalStr = tmpArr1[0]
//                let arrayofCom = finalStr.components(separatedBy: spaceChar)
//                for ind in 0..<arrayofCom.count {
//                    if arrayofCom[ind].contains("BANDWIDTH=") {
//                        parsedDic["BANDWIDTH"] = arrayofCom[ind].dropFirst(10)
//                    }
//                    if arrayofCom[ind].contains("RESOLUTION=") {
//                        parsedDic["RESOLUTION"] = arrayofCom[ind].dropFirst(11)
//                    }
//                }
//                resultArr.append(parsedDic)
//            }
//            successBlock(resultArr,data)
//
//        }
//
//        task.resume()
//    }
//}
//
//func parseHLS(url: String) -> [HLSVariant] {
//    var variants = [HLSVariant]()
//
//    let parser = HLSParser()
//    let url = url
//
//    parser.parseStreamTags(link: url, successBlock: { parsedResponse,data in
//        for case let item as Dictionary<String, Any> in parsedResponse {
//            let variant = HLSVariant(url: item["LINK"], bandwidth: item["BANDWIDTH"], resolution: item["RESOLUTION"])
//            variants.append(variant)
//        }
//    }, failedBlock: { error in
//        print("!!!HLS ERROR: \(error as Any)")
//    })
//
//    return variants//.sorted { $0.bandwidth < $1.bandwidth }
//}
