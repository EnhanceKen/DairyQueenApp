//
//  PickupDetails.swift
//  DQApp
//
//  Created by Consultant on 12/22/22.
//

import SwiftUI

struct PickupDetailsRow: View {
    var body: some View {
        HStack(spacing: 20){
            Image("icons8-restaurant-building-50-3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30)
                .foregroundColor(.blue)

            VStack(alignment: .leading, spacing: 10){
                Text("Pickup Details")
                    .font(.custom(
                        "helveticaNeue-Medium",
                        fixedSize: 13))
                    .foregroundColor(Color.gray)
                
                Text("Pickup Inside")
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

struct PickupDetails_Previews: PreviewProvider {
    static var previews: some View {
        PickupDetailsRow()
    }
}
