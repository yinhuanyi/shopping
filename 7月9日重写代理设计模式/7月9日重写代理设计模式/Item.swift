//
//  Item.swift
//  7月9日重写代理设计模式
//
//  Created by 尹欢一 on 16/7/9.
//  Copyright © 2016年 hut. All rights reserved.
//

import Foundation

class Item {
    
    var itemName: String? = nil
    
    var itemBrand: String? = nil
    
    var isBuy: Bool = false
    
    init(itemName: String, itemBrand: String, isbuy: Bool) {
        
        self.itemName = itemName
        
        self.itemBrand = itemBrand
        
        self.isBuy = false
        
    }
    
    convenience init(itemName: String, itemBrand: String){
    
        self.init(itemName: itemName, itemBrand: itemName, isbuy: false)
    
    }
    
    
    
}
