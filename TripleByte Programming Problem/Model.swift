//
//  Model.swift
//  TripleByte Programming Problem
//
//  Created by user on 12/11/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit


var MeowInfo = [MeowCards]()

struct MeowCards: Decodable {
    
    var title: String
    var time: String
    var image: String
    var description: String
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case time = "time"
        case image = "image"
        case description = "description"
    }
}
