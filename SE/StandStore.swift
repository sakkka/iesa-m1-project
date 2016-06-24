//
//  StandStore.swift
//  SE
//
//  Created by Mastere 1 IT on 23/06/2016.
//  Copyright © 2016 Mastere 1 IT. All rights reserved.
//

import Foundation

class StandStore {
    
    var stands = [Stand]()
    
    required init(coder decoder: NSCoder) {
    }
    
    func encodeWithCoder(aCoder: NSCoder){
        aCoder.encodeObject(stands, forKey: "standList")
    }
    
    
    func insertNewStand(value:String){
        let stand = Stand(title: value)
        stands.append(stand)
    }
    
    func removeStand(index:Int){
        self.stands.removeAtIndex(index)
        
    }
    
    func save() {
        let stockerStand = NSKeyedArchiver.archivedDataWithRootObject(self.stands)
        NSUserDefaults.standardUserDefaults().setObject(stockerStand, forKey: "standList")
    }
    
    func load() {
        if let stockerStand = NSUserDefaults.standardUserDefaults().objectForKey("standList") as? NSData {
            let savedStandList = NSKeyedUnarchiver.unarchiveObjectWithData(stockerStand) as! [Stand]
            self.stands = savedStandList
        }
    }
}
