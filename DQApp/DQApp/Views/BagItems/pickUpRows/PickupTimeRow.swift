//
//  PickupTimeRow.swift
//  DQApp
//
//  Created by Consultant on 12/22/22.
//

import SwiftUI

struct PickupTimeRow: View {
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: "clock")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30)
                .foregroundColor(.blue)

            VStack(alignment: .leading, spacing: 10){
                Text("Pickup Time")
                    .font(.custom(
                        "helveticaNeue-Medium",
                        fixedSize: 13))
                    .foregroundColor(Color.gray)
                
                Text("ASAP (Today, 10:45 AM)")
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

struct PickupTimeRow_Previews: PreviewProvider {
    static var previews: some View {
        PickupTimeRow()
    }
}
