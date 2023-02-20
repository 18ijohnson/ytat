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
        } else {
            print("!!!Unrecognized Badge Style: \(item.lineItemRenderer.badge?.metadataBadgeRenderer.style)")
            return AnyView(Text(label)
                .lineLimit(1)
                .font(.system(size: 24, weight: .semibold))
                .foregroundColor(Color.red)
            )
        }
    }
    return AnyView(Text("!!!Unknown Item"))
}
