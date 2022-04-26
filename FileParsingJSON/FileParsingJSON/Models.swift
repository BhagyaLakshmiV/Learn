//
//  Models.swift
//  FileParsingJSON
//
//  Created by BhagyaLakshmi on 19/04/22.
//

import Foundation
struct Result: Codable{
    let data:  [ResultItem]
}
struct ResultItem:Codable{
    let title: String
    let items: [String]
}
