//
//  DATA.swift
//  Calvin123
//
//  Created by User06 on 2021/1/11.
//
import Foundation

struct Bandori_card: Codable {
    
    var title: String
    var image_url:URL
    var url:URL
    var synopsis:String
    var type:String
    var episodes:Int
    //var score:Int
    
    
 
}

struct Bandori_cardResults: Codable {

 var results: [Bandori_card]
}


