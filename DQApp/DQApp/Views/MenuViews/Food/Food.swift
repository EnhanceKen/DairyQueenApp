//
//  Food.swift
//  DQApp
//
//  Created by Consultant on 12/19/22.
//

import SwiftUI

struct Food: View {
    var body: some View {
        ZStack{
            Image("orangeBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
        VStack{
            ScrollView{
                Button(action: {
                    //                Treats()
                }) {
                    Text("COMBOS")
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
                
                Button(action: {
                    // Button action here
                }) {
                    Text("BURGERS & SANDWICHES")
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
                
                Button(action: {
                    // Button action here
                }) {
                    Text("CHICKEN STRIP BASKETS")
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
                
                Button(action: {
                    // Button action here
                }) {
                    Text("SALADS")
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
                
                Button(action: {
                    // Button action here
                }) {
                    Text("SNACKS & SIDES")
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
                
                Button(action: {
                    // Button action here
                }) {
                    Text("KIDS' MEALS")
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
                
                Button(action: {
                    // Button action here
                }) {
                    Text("MEAL DEAL")
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
}

struct Food_Previews: PreviewProvider {
    static var previews: some View {
        Food()
    }
}
