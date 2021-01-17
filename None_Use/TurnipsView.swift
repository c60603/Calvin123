//
//  SwiftUIView.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import SwiftUI
import Foundation
import UIKit

struct TurnipsView: View {
/*
    func buttonclicked(web: String){
        guard let url = URL(string: web) else {
            return
        }
        UIApplication.shared.open(url)
    }
*/
    @State private var buttonclick: Bool = false
    var body: some View {
        ZStack{
            VStack(alignment: .leading) {
                    /*HStack{
                        Image("daisy")
                            .resizable()
                            .frame(width: 200, height: 250)
                        Text("點選以下網站去預測大頭菜價格！！")
                        .foregroundColor(Color.black)
                        .bold()
                        .padding()
                    }*/
                    
                
                HStack {
                    Image("icon-bell")
                    Button(NSLocalizedString("twitter1", comment: "")) {
                        self.buttonclick = true
                    }
                    .sheet(isPresented: $buttonclick) {
                        SafariView(url: URL(string: "https://twitter.com/narucole_jp")!)
                    }
                }
                .padding(10)
                
                HStack {
                    Image("icon-bell")
                    Button(NSLocalizedString("twitter2", comment: "")) {
                        self.buttonclick = true
                    }
                    .sheet(isPresented: $buttonclick) {
                        SafariView(url: URL(string: "https://twitter.com/naruto_kousiki")!)
                    }
                }
                .padding(10)
                    
/*
                    Button(action: {
                        self.buttonclicked(web: "https://www.4gamers.com.tw/animal-crossing-turnips-calculator")
                    }) {
                        HStack{
                            Image("icon-turnip")
                            Text("大頭菜賣價預測 - 2")
                                .foregroundColor(Color.blue)
                            .bold()
                            .padding()
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
 */
                }
                .padding()
            }
        .background(Image("BG").opacity(0.15))
        }
}
