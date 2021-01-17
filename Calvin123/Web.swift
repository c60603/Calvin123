//
//  Web.swift
//  Calvin123
//
//  Created by User06 on 2021/1/16.
//

import SwiftUI

struct Web: View {
    var body: some View {
        VStack{
        WebView(urlString: "https://naruto-action.bn-ent.net/")
        }
    }
}

struct Web_Previews: PreviewProvider {
    static var previews: some View {
        Web()
    }
}
