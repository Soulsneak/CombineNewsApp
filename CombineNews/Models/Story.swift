//
//  Story.swift
//  CombineNews
//
//  Created by Derek on 1/27/21.
//

import Foundation

struct Story:Codable{
    let id:Int
    let title:String
    let url:String
}
extension Story{
    static func placeholder() -> Story{
        return Story(id: 0, title: "Not Available", url: "")
    }
}
