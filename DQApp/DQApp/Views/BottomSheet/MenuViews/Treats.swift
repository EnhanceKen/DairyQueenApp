//
//  Treats.swift
//  DQApp
//
//  Created by Consultant on 12/19/22.
//

import SwiftUI

struct Treats: View {
    var body: some View {
        ZStack{       
            Image("BlueBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            VStack{
               
                NavigationLink(destination: BlizzardTreats(),
                               label: {
                    BlizzardTreatsButton()
                }
                )
                
                
                Button(action: {
                    // Button action here
                }) {
                    Text("CLASSIC TREATS")
                        .foregroundColor(.black)
                        .font(.custom(
                                "helveticaNeue-Medium",
                                fixedSize: 20))
                        .fontWeight(.semibold)
                        .frame(width: 350, height: 100)
                        .background(Color.white)
                        .cornerRadius(20, corners: [.topLeft, .bottomRight])
                        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0.0, y: 10)
                }
                Spacer()
            }
            
        }
        
    }
}


struct BlizzardTreatsButton: View {
    var body: some View {
        
        Text("BLIZZARD® TREATS")
            .foregroundColor(.black)
            .font(.custom(
                "helveticaNeue-Medium",
                fixedSize: 20))
            .fontWeight(.semibold)
            .frame(width: 350, height: 100)
            .background(Color.white)
            .cornerRadius(20, corners: [.topLeft, .bottomRight])
            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0.0, y: 10)
    }
    
}









struct Treats_Previews: PreviewProvider {
    static var previews: some View {
        Treats()
    }
}
