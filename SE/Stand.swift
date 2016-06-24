//
//  Stand.swift
//  SE
//
//  Created by Mastere 1 IT on 23/06/2016.
//  Copyright © 2016 Mastere 1 IT. All rights reserved.
//

import Foundation

class Stand: NSObject {
    
    var title:String = ""
    var standDescription:String = ""
    var location:String = ""
    
    
    init(title: String){
        self.title = title
    }
    
    init(coder decoder: NSCoder) {
        self.title = decoder.decodeObjectForKey("title") as! String
        self.standDescription = decoder.decodeObjectForKey("standDescription") as! String
        self.location = decoder.decodeObjectForKey("location") as! String
    }
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self.title, forKey: "title")
        coder.encodeObject(self.standDescription, forKey: "standDescription")
        coder.encodeObject(self.location, forKey: "location")
    }
    
}