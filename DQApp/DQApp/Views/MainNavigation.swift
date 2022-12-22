//
//  Menu.swift
//  DQApp
//
//  Created by Consultant on 12/17/22.
//

import SwiftUI
struct MainNavigation: View {
    @StateObject var bagManager = BagManager()
    var body: some View {
            TabView{
                slidingMenu()
                    .tabItem{
                        Image("icons8-hamburger-24")
                        Text("Order")
                    }
         
                rewardView()
                    .tabItem{
                        Image(systemName: "star")
                        Text("Rewards")
                    }
                
                dealsView()
                    .tabItem{
                        Image(systemName: "tag")
                        Text("Deals")
                    }
                
                myDQView()
                    .tabItem{
                        Image(systemName: "person")
                        Text("My DQ")
                    }
                
                 BagView()
                    .environmentObject(BagManager())
                    .tabItem{
                        BagButton(numberOfProducts: bagManager.products.count)
                    }
                
            }.accentColor(.blue)
        }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigation()
    }
}
