//
//  ItemStore.swift
//  Homepwner
//
//  Created by nguyen.phuc.khanh on 11/1/17.
//  Copyright © 2017 nguyen.phuc.khanh. All rights reserved.
//

import UIKit

class ItemStore {
    
    var allItems: [Item] = []
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
}
