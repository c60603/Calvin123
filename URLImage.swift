//
//  URLImage.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import SwiftUI
import Foundation

struct URLImage: View {
    var url: URL
    @State private var image = Image(systemName: "photo")
    @State private var downloadimgfinish = false
    var scale: CGFloat = 1
    
    func download() {
        if let data = try? Data(contentsOf: url), let uiImage = UIImage(data: data) {
            self.image = Image(uiImage: uiImage)
            self.downloadimgfinish = true
        }
    }
    
    var body: some View {
        image
        .resizable()
            .onAppear {
                if self.downloadimgfinish == false {
                    self.download()
                }
        }
    }
}
