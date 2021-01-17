//
//  data_memberDetail.swift
//  Calvin123
//
//  Created by User06 on 2021/1/11.
//

import SwiftUI

struct data_memberDetail: View {
    var data_member: Bandori_card
    @State private var scale: CGFloat = 1
    @State private var big_enough: Bool = false
    @State private var buttonclick: Bool = false
    var body: some View {
        VStack  {
            
            Text(data_member.title)
            .bold()
            .padding()

            URLImage(url: data_member.image_url)
            .frame(width: 200, height: 200)
            .scaledToFill()
            .clipped()
            .scaleEffect(scale)
            .onLongPressGesture {
                if(!self.big_enough){
                    self.scale *= 1.5
                    self.big_enough = true
                }
            }
            
            Text("Type:"+data_member.type)
            .bold()
            .padding()
            
            Text("集數:"+String(data_member.episodes))
            .bold()
            .padding()
            
            
            
            Text(data_member.synopsis)
            .bold()
            .padding()
            
            Button(NSLocalizedString("連結", comment: "")) {
                self.buttonclick = true
            }
            .sheet(isPresented: $buttonclick) {
                SafariView(url:data_member.url)
            }
            
            

        }.background(Image("BG").scaledToFit().opacity(0.5))
    }
}
