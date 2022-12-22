//
//  ProductRow.swift
//  DQApp
//
//  Created by Consultant on 12/21/22.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var bagManager: BagManager
    var product = Product()

    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .background(Color.white)
                .cornerRadius(8)
                .shadow(radius: 5)
            
            VStack(alignment: .leading, spacing: 10){
                Text(product.name)
                
                Text("$\(product.price)")
            }
            Spacer()
            Image(systemName: "trash")
                .onTapGesture {
                    bagManager.removeFromBag(product: product)
                }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
       
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: BlizzardList[3])
            .environmentObject(BagManager())
    }
}
