//
//  ContentView.swift
//  Hacker News
//
//  Created by Ankita Jaiswal on 04/06/24.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){
                post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }

                }
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear(){
            networkManager.fetchData()
        }
        
    }
}

#Preview {
    ContentView()
}

//struct Post: Identifiable{
//    var id: Int
//    var title: String
//}
//
//let posts: [Post] = [
//Post(id: 1, title: "Hello"),
//Post(id: 2, title: "Hej")
//]
