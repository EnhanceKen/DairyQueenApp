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
                // Button action here
            }) {
                Text("TREATS")
                    .foregroundColor(.black)
                    .frame(width: 350, height: 100)
                    .border(Color.black, width: 1)
                    .cornerRadius(20, corners: [.topLeft, .bottomRight])
            }
            
            Button(action: {
                // Button action here
            }) {
                Text("FOOD")
                    .foregroundColor(.black)
                    .frame(width: 350, height: 100)
                    .border(Color.black, width: 1)
                    .cornerRadius(20, corners: [.topLeft, .bottomRight])
            }
            
            Button(action: {
                // Button action here
            }) {
                Text("DRINKS")
                    .foregroundColor(.black)
                    .frame(width: 350, height: 100)
                    .border(Color.black, width: 1)
                    .cornerRadius(20, corners: [.topLeft, .bottomRight])
                    
            }
            
            Button(action: {
                // Button action here
            }) {
                Text("CAKES")
                    .foregroundColor(.black)
                    .frame(width: 350, height: 100)
                    .border(Color.black, width: 1)
                    .cornerRadius(20, corners: [.topLeft, .bottomRight])
            }
            
            
            
            
            
            
            
            
            
        }
        
        
        
        
        
        
    }
}

struct MenuPreviews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
