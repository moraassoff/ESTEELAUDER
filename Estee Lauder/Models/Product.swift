//
//  Product.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 26/7/23.
//

import Foundation

struct Product : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var price : Int
}

//instance
var productList = [Product(name: "2-IN-1 FOAM CLEANSER" , image: "cleanser", price: 27),
                   Product(name: "MELTING SOFT CREME/MASK" , image: "creme", price: 48),
                   Product(name: "AIRY LOTION" , image: "airy lotion", price: 48),
                   Product(name: "RADIANT ESSENCE LOTION" , image: "radiant lotion", price: 42)]
                


