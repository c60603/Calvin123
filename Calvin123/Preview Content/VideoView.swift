//
//  VideoView.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import SwiftUI

struct VideoView: View {
    @State private var urlString = ["https://www.youtube.com/watch?v=x-GdvPT8FqU"]
    var body: some View {
        VStack {
            WebView(urlString: urlString[0])
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
