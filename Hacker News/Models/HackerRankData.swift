//
//  HackerRank Data.swift
//  Hacker News
//
//  Created by Ankita Jaiswal on 04/06/24.
//

import Foundation

struct Result: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
