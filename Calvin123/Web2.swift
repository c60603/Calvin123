//
//  Web2.swift
//  Calvin123
//
//  Created by User06 on 2021/1/16.
//

import SwiftUI

struct Web2: View {
    var body: some View {
        VStack{
        WebView(urlString: "https://zh.wikipedia.org/wiki/%E7%81%AB%E5%BD%B1%E5%BF%8D%E8%80%85")
        }
    }
}

struct Web2_Previews: PreviewProvider {
    static var previews: some View {
        Web2()
    }
}
