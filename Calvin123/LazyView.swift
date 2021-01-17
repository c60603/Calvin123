//
//  LazyView.swift
//  Calvin123
//
//  Created by User06 on 2021/1/16.
//

import SwiftUI


struct LazyView: View {

        var body:some View{
            NavigationView{
                
                ScrollView(.vertical){
                    Spacer()
                    Spacer()
                    let columns=[GridItem(),GridItem()]
                    LazyVGrid(columns:columns){
                        
                            NavigationLink(destination:Web()){
                                VStack{
            
                                    Image("Naruto")
                                    .resizable()
                                    .scaledToFill().frame(width: 150, height: 150).cornerRadius(15).clipped().transition(.opacity)

                                    Text("Game")}
                            }
                        NavigationLink(destination:Web2()){
                            VStack{
        
                                Image("Sasuke")
                                .resizable()
                                .scaledToFill().frame(width: 150, height: 150).cornerRadius(15).clipped().transition(.opacity)

                                Text("Wiki")}
                        }
                        NavigationLink(destination:Web3()){
                            VStack{
        
                                Image("KKC")
                                .resizable()
                                .scaledToFill().frame(width: 150, height: 150).cornerRadius(15).clipped().transition(.opacity)

                                Text("Twitter")}
                        }
                        NavigationLink(destination:Web4()){
                            VStack{
        
                                Image("Minato")
                                .resizable()
                                .scaledToFill().frame(width: 150, height: 150).cornerRadius(15).clipped().transition(.opacity)

                            Text("Movies")}
                        }
                                .navigationTitle("Website").navigationBarTitleDisplayMode(.inline)
                                
                            }
                            
                                
                        
                    }.background(Image("BG").scaledToFit().opacity(0.5))
                }

            }
            
}

struct LazyView_Previews: PreviewProvider {
    static var previews: some View {
        LazyView()
    }
}
