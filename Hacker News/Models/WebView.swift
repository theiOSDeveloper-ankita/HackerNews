//
//  WebView.swift
//  Hacker News
//
//  Created by Ankita Jaiswal on 04/06/24.
//

import Foundation
import WebKit
import SwiftUI

struct Webview: UIViewRepresentable{
    let urlstring: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let urlstring = urlstring{
            if let url = URL(string: urlstring){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
