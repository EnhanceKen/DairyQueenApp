//
//  PickupStoreRow.swift
//  DQApp
//
//  Created by Consultant on 12/22/22.
//

import SwiftUI

struct PickupStoreRow: View {
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: "mappin.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30)
                .foregroundColor(.blue)

            VStack(alignment: .leading, spacing: 10){
                Text("Pickup Store")
                    .font(.custom(
                        "helveticaNeue-Medium",
                        fixedSize: 13))
                    .foregroundColor(Color.gray)
                
                Text("1641 Spring RD SE")
                    .font(.custom(
                        "helveticaNeue-Medium",
                        fixedSize: 16))
                    .foregroundColor(Color.black)
            }
            Spacer()
            Button(action: {
                // Button action here
            }) {
                Text("Change")
                    .font(.custom(
                        "helveticaNeue-Medium",
                        fixedSize: 16))
                    .foregroundColor(Color.blue)
            }
        }
        
        .padding(.horizontal)
    .frame(maxWidth: .infinity, alignment: .leading)
    
   
    }
}

struct PickupStoreRow_Previews: PreviewProvider {
    static var previews: some View {
        PickupStoreRow()
    }
}
