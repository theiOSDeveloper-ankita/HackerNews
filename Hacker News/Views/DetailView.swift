//
//  DetailView.swift
//  Hacker News
//
//  Created by Ankita Jaiswal on 04/06/24.
//

import SwiftUI

struct DetailView: View {
    let url: String
    var body: some View {
        Webview(urlstring: url)
    }
}

#Preview {
    DetailView(url: "www.google.com")
}


