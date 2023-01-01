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
        
        VStack {
            Text("Review Your Order")
                .font(.custom(
                    "helveticaNeue-Medium",
                    fixedSize: 22))
                .fontWeight(.bold)
            ScrollView{
                VStack{
                    PickupStoreRow()
                    Divider()
                        .frame(width: 360, height: 1)
                        .overlay(.blue)
                    PickupDetailsRow()
                    Divider()
                        .frame(width: 360, height: 1)
                        .overlay(.blue)
                    PickupTimeRow()
                    
                    HStack{
                        Text("YOUR BAG [\(BagManager.products.count)]")
                            .font(.custom(
                                "helveticaNeue-Medium",
                                fixedSize: 18))
                            .fontWeight(.semibold)
                            .padding([.top, .leading], 14.0)
                        Spacer()
                    }
                    if BagManager.products.count > 0 {
                        ForEach(BagManager.products, id: \.id){
                            product in
                            ProductRow(product: product)
                        }
                        HStack{
                            Text("Your bag total is")
                                .font(.custom(
                                    "helveticaNeue-Medium",
                                    fixedSize: 18))
                                .fontWeight(.semibold)
                            
                            Spacer()
                            Text("$\(BagManager.total.formatted(.number.precision(.fractionLength(2))))")
                                .font(.custom(
                                    "helveticaNeue-Medium",
                                    fixedSize: 18))
                                .fontWeight(.semibold)
                        }
                        .padding()
                        Spacer()
                    } else {
                        ZStack {
                            Image("stareffect")
                                .resizable()
                                .frame(width:160, height: 160)
                            Image("icons8-refreshments-100")
                                .resizable()
                                .frame(width:120, height: 120)
                            
                        }.padding(.top, 80.0)
                        Text("YOUR BAG IS EMPTY ... JUST LIKE YOUR STOMACH")
                            .font(.custom(
                                "helveticaNeue-Medium",
                                fixedSize: 14))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 100.0)
                    }
                }
            }
        }
    }
}

struct BagView_Previews: PreviewProvider {
    static var previews: some View {
        BagView()
            .environmentObject(BagManager())
    }
}
