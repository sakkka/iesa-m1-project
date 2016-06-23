//
//  Stand.swift
//  SE
//
//  Created by Mastere 1 IT on 23/06/2016.
//  Copyright © 2016 Mastere 1 IT. All rights reserved.
//

import Foundation

class Stand {
    
    var title:String = ""
    var description:String = ""
    var location:String = ""
    
    
    init(title: String){
        self.title = title
    }
    
    func getTitle() ->String{
        return self.title
    }
    func setTitle(value : String){
        self.title = value
    }

    func getDescription() -> String{
        return self.description
    }
    func setDescription(value : String){
        self.description = value
    }
    
    func getLocation() -> String{
        return self.location
    }
    func setLocation(value : String){
        self.location = value
    }
}