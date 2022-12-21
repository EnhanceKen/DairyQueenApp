//
//  ContentView.swift
//  DQApp
//
//  Created by Consultant on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                
                Text("Welcome")
                    .font(.custom(
                            "snellroundhand-bold",
                            fixedSize: 26))
                    .foregroundColor(.red)
                
                Text("DQ® Fan")
                    .font(.custom(
                            "helveticaNeue-CondensedBlack",
                            fixedSize: 34))
                    .foregroundColor(.blue)
                
                Text("Start earning exclusive rewards, accesing weekly deals, and saving your favorite treats and eats for convenient reordering.")
                
                    .font(.custom(
                            "CervoNeue",
                            fixedSize: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .padding(2.0)
                    .frame(width: 300, height: 100.0)
                Text("*At participating Locations.")
                    .font(.system(size: 10, weight: .light, design: .default))
                Spacer()
                
                ZStack{
                    Image("stareffect")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:300,
                               height:400,
                               alignment: .center)
                        .padding()
                    
                    Image("Blizzard")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:400,
                               height:400,
                               alignment: .center)
                        .padding()
                }
                Spacer()
                
                
                Spacer()
                NavigationLink(destination: SignInView().navigationBarBackButtonHidden(true),
                               label: {
                    RegisterButton()
                    
                }
                )
                .padding()
                NavigationLink(destination: MainNavigation().navigationBarBackButtonHidden(true),
                               label: {
                    GuestButton()
                }
                )
                
            }
//            .navigationTitle("Welcome")
            
        }
    }
}



struct RegisterButton: View {
    var body: some View{
        Text("SIGN IN / SIGN UP")
            .foregroundColor(.white)
            .frame(width: 350, height: 35,
                   alignment: .center)
            .background(Color.blue)
            .cornerRadius(20)
            .font(.custom(
                    "helveticaNeue-Medium",
                    fixedSize: 11))
            .fontWeight(.heavy)
    }
}

struct GuestButton: View {
    
    @State var navigationBarBackButtonHidden = true
    
    var body: some View{
        Text("Continue as Guest")
            .foregroundColor(.blue)
            .frame(alignment: .center)
            .font(.custom(
                    "CervoNeue",
                    fixedSize: 13))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
