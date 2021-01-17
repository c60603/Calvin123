//
//  Bugs_memberRow.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import SwiftUI

struct Bugs_memberRow: View {
    var bugs_member: BUGS
    var body: some View {
        HStack {
            URLImage(url: bugs_member.icon_uri)
                .frame(width: 46, height: 46)
                .scaledToFill()
                .clipped()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("名字: "+bugs_member.name.name_TWzh)
                .bold()
                .padding()
                if(bugs_member.availability.time == "") {
                    Text("出現時間: 24HR")
                    .bold()
                    .padding()
                } else {
                    Text("出現時間: "+String(bugs_member.availability.time!))
                    .bold()
                    .padding()
                }
            }
        }
    }
}
