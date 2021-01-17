//
//  VillagersView.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import SwiftUI

struct VillagersView: View {
    @State private var vill_member = [VILLAGERS]()
    @State private var count = 1
    @State private var firstpageload = false
    func load_vill(count: Int) {
        let urlStr = "https://acnhapi.com/v1/villagers/"+String(count)
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                let decoder = JSONDecoder()
                if let data = data {
                    do {
                        let vill_results = try decoder.decode(VILLAGERS.self, from: data)
                        print(vill_results)
                        self.vill_member.append(vill_results)
                    } catch {
                        print(error)
                    }
                }
            }.resume()
        }
    }
    
    
    var body: some View {
        VStack {
            NavigationView {
                List(vill_member.indices, id: \.self, rowContent: { (index) in
                 NavigationLink(destination: Vill_memberDetail(vill_member:
                self.vill_member[index])) {
                 Vill_memberRow(vill_member: self.vill_member[index])
                 }
                 })
                    .onAppear {
                        if(self.firstpageload != true){
                            for i in (1...391) {
                                self.load_vill(count: i)
                            }
                            self.firstpageload = true
                        }
                }
                .navigationBarTitle(Text(NSLocalizedString("島民", comment: "")))
            }
        }
    }
}
