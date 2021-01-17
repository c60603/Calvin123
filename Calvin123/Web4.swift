//
//  Web4.swift
//  Calvin123
//
//  Created by User06 on 2021/1/16.
//

import SwiftUI

struct Web4: View {
    var body: some View {
        VStack{
        WebView(urlString: "https://www.cbr.com/naruto-every-movie-chronologically/")
        }
    }
}

struct Web4_Previews: PreviewProvider {
    static var previews: some View {
        Web4()
    }
}
