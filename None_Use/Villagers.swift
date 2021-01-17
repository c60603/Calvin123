//
//  Villagers.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import Foundation


struct VILLAGERS: Codable {
    var id: Int
    var name: Name
    var personality: String
    var birthday: String
    var gender: String
    var icon_uri: URL
    var image_uri: URL
}
