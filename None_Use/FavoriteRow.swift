//
//  FavoriteRow.swift
//  Calvin123
//
//  Created by User06 on 2021/1/16.
//

import SwiftUI

import SwiftUI

struct FavoriteRow: View {
    var favor: Favorite
//    var photo: Picture
    var body: some View {
        HStack {
            
            Text("\(favor.name)")
            Text("\(favor.place)")
            //Text("\(favor.date)")
        }
    }
}
