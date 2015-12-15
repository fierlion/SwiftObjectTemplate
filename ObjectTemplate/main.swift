//
//  main.swift
//  ObjectTemplate
//
//  Created by Ray Foote on 12/14/15.
//  Copyright © 2015 fierlion. All rights reserved.
//

import Foundation

var products = [
    ("Kayak", "a boat for one person", 275.0, 4),
    ("Lifejacket", "protective gear", 48.95, 14),
    ("Soccer Ball", "fifa approved size and weight", 19.5, 32)
]

func calculateTax(product:(String, String, Double, Int)) -> Double {
    return product.2 * 0.2
}

func calculateStockValue (tuples:[(String, String, Double, Int)]) -> Double {
    return tuples.reduce(0, combine: {(total, product) -> Double in
        return total + (product.2 * Double(product.3))
    })
}

print("sales tax for kayak: $\(calculateTax(products[0]))")
print("total value of stock: $\(calculateStockValue(products))")

