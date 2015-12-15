//
//  Product.swift
//  ObjectTemplate
//
//  Created by Ray Foote on 12/14/15.
//  Copyright © 2015 fierlion. All rights reserved.
//

import Foundation

class Product {
    var name:String
    var description:String
    var price:Double
    var stock:Int
    
    init(name:String, description:String, price:Double, stock:Int) {
        self.name = name
        self.description = description
        self.price = price
        self.stock = stock
    }
    
    func calculateTax(rate:Double) -> Double {
        return self.price * rate
    }
    
    var stockValue: Double {
        get {
            return self.price * Double(self.stock)
        }
    }
}
