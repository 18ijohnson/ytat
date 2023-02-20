//
//  SearchResponse.swift
//  ytat
//
//  Created by Isaac Johnson on 2/17/23.
//

import Foundation

//MARK: - SearchResponse
struct SearchResponse: Decodable {
    let estimatedResults: String?
    let contents: SectionList
}
