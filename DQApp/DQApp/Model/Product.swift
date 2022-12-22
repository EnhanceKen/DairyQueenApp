//
//  Products.swift
//  DQApp
//
//  Created by Consultant on 12/21/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name = String()
    var image = String()
    var price = Double()
}

var BlizzardList = [Product(name: "NEW! Reese's Take 5 Blizzard® Treat", image: "webp", price: 4.29),
                    Product(name: "NEW! SNICKERS® Blizzard® Treat", image: "webp-1", price: 4.29),
                    Product(name: "OREO® Hot Cocoa Blizzard® Treat", image: "webp-2", price: 4.29),
                    Product(name: "Candy Cane Chill Blizzard® Treat", image: "webp-3", price: 4.29),
                    Product(name: "NEW! Frosted Sugar Cookie Blizzard® Treat", image: "webp-4", price: 4.29),
                    Product(name: "Very Cherry Chip Blizzard® Treat", image: "webp-5", price: 4.29)
                    
]
