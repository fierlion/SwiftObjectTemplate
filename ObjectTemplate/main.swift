//
//  main.swift
//  ObjectTemplate
//
//  Created by Ray Foote on 12/14/15.
//  Copyright © 2015 fierlion. All rights reserved.
//

import Foundation

var products = [
    Product(name:"Kayak", description:"a boat for one person", price:275.0, stock:4),
    Product(name:"Lifejacket", description:"protective gear", price:48.95, stock:14),
    Product(name:"Soccer Ball", description:"fifa approved size and weight", price:19.5, stock:32)
]

func calculateTax(product:Product) -> Double {
    return product.price * 0.2
}

func calculateStockValue (productsArray:[Product]) -> Double {
    return productsArray.reduce(0, combine: {(total, product) -> Double in
        return total + product.stockValue
    })
}

print("sales tax for kayak: $\(products[0].calculateTax(0.2))")
print("total value of stock: $\(calculateStockValue(products))")

