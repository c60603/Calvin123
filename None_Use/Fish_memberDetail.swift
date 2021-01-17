//
//  Fish_memberDetail.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import SwiftUI
import Foundation
//import KingfisherSwiftUI

struct Fish_memberDetail: View {
    var fish_member: FISH
    @State private var scale: CGFloat = 1
    @State private var big_enough: Bool = false
    var body: some View {
        VStack (alignment: .leading) {
            Text(fish_member.name.name_TWzh)
            .bold()
            .padding()
//KFImage(URL(string: "https://example.com/image.png")!)
            /*
            URLImage(url: fish_member.image_uri)
            .frame(width: 400, height: 200)
            .scaleEffect(scale)
            .onLongPressGesture {
                if (!self.big_enough) {
                    self.scale *= 1.5
                    self.big_enough = true
                }
            }
            .scaledToFill()
            .clipped()
            */
            /*KFImage(fish_member.image_uri)
            .resizable()
                .frame(width:400, height: 200)
                .scaleEffect(scale)
                .onLongPressGesture {
                    if(!self.big_enough){
                        self.scale*=1.5
                        self.big_enough = true
                    }
            }
            
            if(fish_member.availability.time == "" || fish_member.availability.time == nil) {
                Text("每日出現時間: 24小時不打烊")
                .bold()
                .padding()
            } else {
                Text("每日出現時間:" + String(fish_member.availability.time!))
                .bold()
                .padding()
            }
            
            if(fish_member.availability.month_northern == "" || fish_member.availability.month_northern == nil) {
                Text("出現月份: 慟! 全年無休")
                .bold()
                .padding()
            } else {
                Text("出現月份:" + String(fish_member.availability.month_northern!))
                .bold()
                .padding()
            }
            
            HStack{
                Image("icon-bells")
                Text("售價: " + String(fish_member.price))
                .bold()
                .padding()
                Image("cj")
                    .resizable()
                    .frame(width:150, height:150)
                Text("水獺1.5倍收喔")
                .bold()
                .padding()
            }*/
            

        }.background(Image("BG").opacity(0.15))
    }
}
