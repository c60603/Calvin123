//
//  data_memberRow.swift
//  Calvin123
//
//  Created by User06 on 2021/1/11.
//

import SwiftUI

struct data_memberRow: View {
    var data_member: Bandori_card
    var body: some View {
        HStack {
            URLImage(url: data_member.image_url)
                .frame(width: 46, height: 46)
                .scaledToFill()
                .clipped()
            
            VStack(alignment: .leading, spacing: 10) {
                Text(data_member.title)
                .bold()
                .padding()
                Text("集數:"+String(data_member.episodes))
                .bold()
                .padding()
                
            }
       }
    }
}
