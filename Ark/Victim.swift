//
//  Victim.swift
//  Ark
//
//  Created by John Berry on 10/28/17.
//  Copyright © 2017 Benjamin Odisho. All rights reserved.
//

import Foundation


class Victim  {
    
    var name: String?
    var victimID: String?
    var lat: Float?
    var lon: Float?
    var group_size: Int?
    var rescued : Bool?

    init(name: String,
         victimID: String,
         lat: Float,
         lon: Float,
         group_size: Int) {
        
        self.name = name
        self.victimID = victimID
        self.lat = lat
        self.lon = lon
        self.group_size = group_size
        self.rescued = false
    }

}
