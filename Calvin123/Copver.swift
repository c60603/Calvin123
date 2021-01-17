//
//  ContentView2.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import SwiftUI

struct Copver: View {
    @State private var selection = 0
    @ObservedObject var championData = ChampionData()
    var body: some View {
        TabView(selection: $selection){
            SwiftUIView()
                .tag(0)
                .tabItem {
                    Image("icon-art")
                    Text("Anime")
            }

            LazyView()
                .tag(2)
                .tabItem {
                    Image("icon-clay")
                    Text("Website")
            }
        
            
            YoutubeView()
            .tag(3)
                .tabItem {
                    Image("icon-fish")
                        .padding()
                    Text("Youtube")
            }
            ChampionList(champsData: self.championData)
                .tag(4)
                .tabItem {
                    Image("icon-floor")
                    Text("Picture")
                }
            
        
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        Copver()
    }
}
