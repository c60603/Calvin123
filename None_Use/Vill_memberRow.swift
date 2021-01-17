//
//  Vill_memberRow.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import SwiftUI

struct Vill_memberRow: View {
    var vill_member: VILLAGERS
    var body: some View {
        HStack {
            URLImage(url: vill_member.icon_uri)
            .frame(width: 46, height: 46)
            .scaledToFill()
            .clipped()
            
            Text("名字: "+vill_member.name.name_TWzh)
            .bold()
            .padding()
        }
    }
}
