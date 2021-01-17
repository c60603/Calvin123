//
//  Fish.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import Foundation

struct FISH: Codable {
    var id: Int
    var name: Name
    var availability: AVAIL
    var price: Int
    var image_uri: URL
    var icon_uri: URL
}

struct Name: Codable {
    var name_TWzh: String
    var name_USen: String
    enum CodingKeys: String, CodingKey {
        case name_TWzh = "name-TWzh"
        case name_USen = "name-USen"
    }
}
