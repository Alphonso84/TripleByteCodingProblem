//
//  Networking.swift
//  TripleByte Programming Problem
//
//  Created by user on 12/11/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

var MeowInfo = [MeowCards]()

class Networking {
    
    var baseURL = URL(string: "https://chex-triplebyte.herokuapp.com/api/cats?page=0")
    
    
    
    
    func getMeowItems() {
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: baseURL!) { (data, response, error) in
            
            guard let meowData = data else {return}
            
            do {
                
                //                let jsonDecoder = JSONDecoder()
                //                let meowInfo = try jsonDecoder.decode(Array<MeowCards>.self, from: meowData)
                let jsonData = try JSONSerialization.jsonObject(with: meowData, options: [])
                
               
                MeowInfo = jsonData as! [MeowCards]
                
            } catch {
                
                print(error)
            }
        }
        task.resume()
        
    }
}
