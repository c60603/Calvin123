//
//  BUGS.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import Foundation

struct BUGS: Codable {
    var id: Int
    var name: Name
    var availability: AVAIL
    var price: Int
    var image_uri: URL
    var icon_uri: URL
}





struct AVAIL: Codable {
    var time: String?
    var month_northern: String?
    var month_array_northern: [Int]?
    var time_array: [Int]?
    enum codingKeys: String, CodingKey {
        case time
        case month_northern = "month-northern"
        case month_array_northern = "month-array-northern"
        case time_array = "time-array"
    }
}
