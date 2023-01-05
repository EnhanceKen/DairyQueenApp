//
//  BagManager.swift
//  DQApp
//
//  Created by Consultant on 12/21/22.
//

import Foundation

class BagManager: ObservableObject{
    
    @Published private(set) var products : [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToBag(product: Product) {
        products.append(product)
        total += Int(product.price)
    }
    
    func removeFromBag(product: Product){
        products = products.filter{ $0 .id != product.id}
        total -= Int(product.price)
    }
     func addDetail(product: Product) {
         products.append(product)
         total += Int(product.price)
     }
    
    
}
