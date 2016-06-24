//
//  StandStoreTest.swift
//  SE
//
//  Created by Mastere 1 IT on 24/06/2016.
//  Copyright © 2016 Mastere 1 IT. All rights reserved.
//

import XCTest

class StandStoreTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func test_insert_store() {
        let store = StandStore()
        
        store.insertNewStand("storeTest1")
        
        XCTAssertEqual(1, store.stands.count)
        
    }
    
    func test_remove_store () {
        let store = StandStore()
        
        store.insertNewStand("storeTest1")
        store.removeStand(0)
        
        XCTAssertEqual(0, store.stands.count)
    }
    

}
