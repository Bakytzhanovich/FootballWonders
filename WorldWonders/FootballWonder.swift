//
//  FootballWonder.swift
//  WorldWonders
//
//  Created by Нурсат Шохатбек on 06.01.2024.
//

import Foundation
import SwiftyJSON

struct FootballWonder {
    var teamName = ""
    var league = ""
    var location = ""
    var flag = ""
    var picture = ""
    
    init(json: JSON) {
        if let item = json["teamName"].string{
            teamName = item
        }
        if let item = json["league"].string{
            league = item
        }
        if let item = json["location"].string{
            location = item
        }
        if let item = json["flag"].string{
            flag = item
        }
        if let item = json["picture"].string{
            picture = item
        }
    }
}
