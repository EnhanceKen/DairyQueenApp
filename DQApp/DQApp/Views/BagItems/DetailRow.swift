//
//  DetailRow.swift
//  DQApp
//
//  Created by Consultant on 1/4/23.
//

import SwiftUI

struct DetailRow: View {
    @EnvironmentObject var bagManager: BagManager
    var product = Product()
    
    var body: some View {
        Image(product.image)
            .resizable()
            .frame(width:190, height: 210)
            .background(Color.white)
        .scaledToFit()
        
        Text(product.name)
            .font(.custom(
                "helveticaNeue-bold",
                fixedSize: 20))
            .multilineTextAlignment(.leading)
            .padding()
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(product: BlizzardList[2])
            .environmentObject(BagManager())
    }
}
