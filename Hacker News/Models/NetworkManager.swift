//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Ankita Jaiswal on 04/06/24.
//

import Foundation
//https://hn.algolia.com/api/v1/search?tags=front_page

class NetworkManager: ObservableObject{
    @Published var posts = [Post]()
    
    func fetchData(){
        if let inputURL = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
        session.dataTask(with: inputURL) { data, response, error in
            if error == nil{
                let decoder = JSONDecoder()
                if let data = data{
                    do{
                         let results = try decoder.decode(Result.self, from: data)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                    }
                    catch {
                        print(error)
                    }}}
                
            }
                .resume()
        }}}

