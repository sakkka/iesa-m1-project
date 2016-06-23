//
//  StandStore.swift
//  SE
//
//  Created by Mastere 1 IT on 23/06/2016.
//  Copyright © 2016 Mastere 1 IT. All rights reserved.
//

import Foundation

class StandStore {
    
    var stands:[Stand] = []
    
    init(){
        let store1 = Stand(title:"IESA Paris")
        store1.setDescription("Ecole supperieure multimedia et art de Paris")
        store1.setLocation("B2")
        stands.append(store1)
        
    }
    
    init(coder decoder: NSCoder) {
        self.stands = decoder.decodeObjectForKey("savedStands") as! [Stand]

    }
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self.stands, forKey: "savedStands")

    }
    
    func insertItems()
    {
        let data = NSKeyedArchiver.archivedDataWithRootObject(stands)
        NSUserDefaults.standardUserDefaults().setObject(data, forKey: "savedStands")
    }
    
    func retrieveItems() ->StandStore!
    {
        if let data = NSUserDefaults.standardUserDefaults().objectForKey("savedStands") as? NSData {
            return NSKeyedUnarchiver.unarchiveObjectWithData(data) as! StandStore
        }
        return nil;
    }
    
    func insertNewStand(value:String){
        let stand = Stand(title: value)
        stands.append(stand)
    }
}
