//
//  StandStore.swift
//  SE
//
//  Created by Mastere 1 IT on 23/06/2016.
//  Copyright © 2016 Mastere 1 IT. All rights reserved.
//

import Foundation

class StandStore: NSCoder {
    
    var stands:[Stand] = []
    
    init(){
        let store1 = Stand(title:"IESA Paris")
        store1.setDescription("Ecole supperieure multimedia et art de Paris")
        store1.setLocation("B2")
        stands.append(store1)
        
    }
    
    init(decoder: NSCoder) {
        self.stands = decoder.decodeObjectForKey("savedStands") as! [Stand]

    }
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self.stands, forKey: "savedStands")

    }
    
    func insertNewStand(value:String){
        let stand = Stand(title: value)
        stands.append(stand)
    }
}
