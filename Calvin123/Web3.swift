//
//  Web3.swift
//  Calvin123
//
//  Created by User06 on 2021/1/16.
//

import SwiftUI

struct Web3: View {
    var body: some View {
        VStack{
            WebView(urlString: "https://twitter.com/naruto_kousiki")
            }
    }
}

struct Web3_Previews: PreviewProvider {
    static var previews: some View {
        Web3()
    }
}
