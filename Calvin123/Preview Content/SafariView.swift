//
//  SafariView.swift
//  calvinProject
//
//  Created by User06 on 2021/1/8.
//

import SwiftUI
import Foundation
import SafariServices


struct SafariView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SFSafariViewController {
         SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
    typealias UIViewControllerType = SFSafariViewController
    
    let url: URL
}
