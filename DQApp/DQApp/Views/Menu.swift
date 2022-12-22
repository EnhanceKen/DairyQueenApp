//
//  Menu.swift
//  DQApp
//
//  Created by Consultant on 12/19/22.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack{
            Button(action: {
//                Treats()
            }) {
                Text("TREATS")
                    .foregroundColor(.black)
                    .frame(width: 350, height: 100)
                    .background(Color.white)
                    .cornerRadius(20, corners: [.topLeft, .bottomRight])
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0.0, y: 10)
                
            }
            
            Button(action: {
                // Button action here
            }) {
                Text("FOOD")
                    .foregroundColor(.black)
                    .frame(width: 350, height: 100)
                    .background(Color.white)
                    .cornerRadius(20, corners: [.topLeft, .bottomRight])
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0.0, y: 10)
            }
            
            Button(action: {
                // Button action here
            }) {
                Text("DRINKS")
                    .foregroundColor(.black)
                    .frame(width: 350, height: 100)
                    .background(Color.white)
                    .cornerRadius(20, corners: [.topLeft, .bottomRight])
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0.0, y: 10)
            }
            
            Button(action: {
                // Button action here
            }) {
                Text("CAKES")
                    .foregroundColor(.black)
                    .frame(width: 350, height: 100)
                    .background(Color.white)
                    .cornerRadius(20, corners: [.topLeft, .bottomRight])
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0.0, y: 10)
            }

            
        }
  
    }
}

struct MenuPreviews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
