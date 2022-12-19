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
                Text("Start earning exclusive rewards, accesing weekly deals, and saving your favorite treats and eats for convenient reordering.")
                
                    .font(.system(size: 16, weight: .regular, design: .default))
                    .padding(2)
                Text("*At participating Locations.")
                    .font(.system(size: 12, weight: .light, design: .default))
                Image(systemName: "house")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:200,
                           height:200,
                           alignment: .center)
                    .padding()
                
                NavigationLink(destination: SignInView(),
                               label: {
                    RegisterButton()
                    
                }
                )
                .padding()
                NavigationLink(destination: Menu(),
                               label: {
                    GuestButton()
                }
                )
                
            }
            .navigationTitle("Welcome")
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
    }
}

struct GuestButton: View {
    var body: some View{
        Text("Continue as Guest")
            .foregroundColor(.blue)
            .frame(alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
