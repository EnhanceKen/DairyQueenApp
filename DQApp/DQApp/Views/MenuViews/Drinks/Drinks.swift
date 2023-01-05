//
//  Drinks.swift
//  DQApp
//
//  Created by Consultant on 12/19/22.
//

import SwiftUI

struct Drinks: View {
    var body: some View {
        ZStack{
            Image("BlueBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
        VStack{
            Button(action: {
                // Button action here
            }) {
                Text("DRINKS")
                    .foregroundColor(.black)
                    .font(.custom(
                            "helveticaNeue-Medium",
                            fixedSize: 20))
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 85)
                    .background(Color.white)
                    .cornerRadius(20, corners: [.topLeft, .bottomRight])
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0.0, y: 10)
            }
            Spacer()
        }
        }
    }
}

struct Drinks_Previews: PreviewProvider {
    static var previews: some View {
        Drinks()
    }
}
