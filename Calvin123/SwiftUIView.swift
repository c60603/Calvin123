//
//  SwiftUIView.swift
//  Calvin123
//
//  Created by User06 on 2021/1/11.
//

import SwiftUI
import Foundation

struct SwiftUIView: View {
    @State private var data_member = [Bandori_card]()
    @State private var scale: CGFloat = 1
    @State private var count = 1
    @State private var firstpageload = false
    
    func load_data(count:Int){
        let urlStr = "https://api.jikan.moe/v3/search/anime?q=naruto"+String(count)
        
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                let decoder = JSONDecoder()
                if let data = data {
                    do {
                        let data_results = try decoder.decode(Bandori_cardResults.self, from: data)
                        self.data_member+=data_results.results
                    }catch {
                        print(error)
                    }
                }
            }.resume()
        }
    }
    
    
    var body: some View {
        VStack {
            NavigationView {
                List(data_member.indices, id: \.self, rowContent: { (index) in
                 NavigationLink(destination: data_memberDetail(data_member:
                self.data_member[index])) {
                 data_memberRow(data_member: self.data_member[index])
                 }
                 })
                .onAppear{
                    
            
                    if(self.firstpageload != true){
                        for i in (1...10) {                           
                            self.load_data(count: i)
                        }
                        self.firstpageload = true
                    }
                  }.navigationBarTitle(Text(NSLocalizedString("火影忍者", comment: "")))
                }
            
            }
        }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
