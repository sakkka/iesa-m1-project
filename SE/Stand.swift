//
//  Stand.swift
//  SE
//
//  Created by Mastere 1 IT on 23/06/2016.
//  Copyright © 2016 Mastere 1 IT. All rights reserved.
//

import Foundation

class Stand: NSObject {
    
    var standTitle:String = ""
    var standDesc:String = ""
    var standLocation:String = ""
    
    
    
    init(title: String){
        self.standTitle = title
    }
    
    
    func getTitle() ->String{
        return self.standTitle
    }
    func setTitle(value : String){
        self.standTitle = value
    }

    func getDescription() -> String{
        return self.standDesc
    }
    func setDescription(value : String){
        self.standDesc = value
    }
    
    func getLocation() -> String{
        return self.standLocation
    }
    func setLocation(value : String){
        self.standLocation = value
    }
}