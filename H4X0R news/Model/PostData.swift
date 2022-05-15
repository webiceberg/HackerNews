//
//  PostData.swift
//  H4X0R news
//
//  Created by Ayberk Aktürk on 21.03.2022.
//

import Foundation

struct Results: Decodable{
    let hits : [Post]
}

struct Post: Decodable,Identifiable{
    let title: String
    let points: Int
    let url: String?
    let objectID: String
    
    var id: String{
        return objectID
    }
}
