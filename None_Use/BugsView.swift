//
//  BugsView.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import SwiftUI

struct BugsView: View {
    @State private var bugs_member = [BUGS]()
    @State private var scale: CGFloat = 1
    @State private var count = 1
    @State private var firstpageload = false
    func load_bugs(count: Int) {
        let urlStr = "https://acnhapi.com/v1/bugs/"+String(count)
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                let decoder = JSONDecoder()
                if let data = data {
                    do {
                        let bugs_results = try decoder.decode(BUGS.self, from: data)
                        print(bugs_results)
                        self.bugs_member.append(bugs_results)
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
                List(bugs_member.indices, id: \.self, rowContent: { (index) in
                 NavigationLink(destination: Bugs_memberDetail(bugs_member:
                self.bugs_member[index])) {
                 Bugs_memberRow(bugs_member: self.bugs_member[index])
                 }
                 })
                    .onAppear {
                        if(self.firstpageload != true){
                            for i in (1...80) {
                                self.load_bugs(count: i)
                            }
                            self.firstpageload = true
                        }
                }
                .navigationBarTitle(Text(NSLocalizedString("蟲子", comment: "")))
            }
        }
    }
}

struct BugsView_Previews: PreviewProvider {
    static var previews: some View {
        BugsView()
    }
}
