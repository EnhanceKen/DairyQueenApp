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
                    .font(.custom(
                        "helveticaNeue-Medium",
                        fixedSize: 13))
                    .foregroundColor(Color.black)
                HStack{
                    //MARK: Edit Button
                    Button(action: {
                        // Button action here
                    }) {
                        Text("Edit")
                            .font(.custom(
                                "helveticaNeue-Medium",
                                fixedSize: 16))
                            .foregroundColor(Color.blue)
                            .padding(.trailing, 5.0)
                    }
                    .font(.custom(
                        "helveticaNeue-Medium",
                        fixedSize: 16))
                    .foregroundColor(Color.blue)
                    Divider()
                        .frame(width: 1, height: 12)
                        .overlay(.blue)
                    
                    //MARK: Remove Button
                    Button(action: {
                        bagManager.removeFromBag(product: product)
                    }) {
                        Text("Remove")
                            .font(.custom(
                                "helveticaNeue-Medium",
                                fixedSize: 16))
                            .foregroundColor(Color.blue)
                            .padding(.leading, 5.0)
                    }
                    .font(.custom(
                        "helveticaNeue-Medium",
                        fixedSize: 16))
                    .foregroundColor(Color.blue)
                }
            }
            Text("$\(product.price.formatted(.number.precision(.fractionLength(2))))")
        }
        .padding(.horizontal, 10.0)
        
    }
}



struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: BlizzardList[3])
            .environmentObject(BagManager())
    }
}
