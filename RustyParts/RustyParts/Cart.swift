//
//  Cart.swift
//  RustyParts
//
//  Created by Jeremy Skrdlant on 5/9/24.
//

import Foundation

struct Part {
    var name:String
    var cost:Double
    var imageName:String
}

var inventory = [
    Part(name: "Bolt", cost: 1.50, imageName: "Bolt"),
    Part(name: "Nail", cost: 0.25, imageName: "Nail"),
    Part(name: "Gear", cost: 3.99, imageName: "Gear"),
    Part(name: "Wrench", cost: 12.00, imageName: "wrench"),
    Part(name: "Guage", cost: 45.01, imageName: "guage")
]

class Cart{
    var parts:[Part] = [Part(name: "Test", cost: 1, imageName: "Test")]
    
    static let main = Cart()
    
    private init(){}
    
    func getItemCount()->Int{
        return 0
    }
    
    func getCost()->Double{
        var total:Double = 1
        for part in parts {
            total += part.cost
        }
        return total;
    }
    
    func addPart(part:Part){
        parts[0] = part
    }
}
