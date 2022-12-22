//
//  BagView.swift
//  DQApp
//
//  Created by Consultant on 12/21/22.
//

import SwiftUI

struct BagView: View {
    @EnvironmentObject var BagManager: BagManager
    var body: some View {
        ScrollView{
            if BagManager.products.count > 0 {
                ForEach(BagManager.products, id: \.id){
                    product in
                    ProductRow(product: product)
                }
                HStack{
                    Text("Your bag total is")
                        .font(.custom(
                                "helveticaNeue-CondensedBlack",
                                fixedSize: 34))
                        .foregroundColor(.blue)
                    
                    Spacer()
                    Text("$\(BagManager.total)")
                        .font(.custom(
                                "snellroundhand-bold",
                                fixedSize: 26))
                        .foregroundColor(.red)
                }
                .padding()
            } else {
                Text("Your bag is empty")
            }
              
        }
//        .navigationTitle("My Bag")
//        padding(.top)
    }
}

struct BagView_Previews: PreviewProvider {
    static var previews: some View {
        BagView()
            .environmentObject(BagManager())
    }
}
