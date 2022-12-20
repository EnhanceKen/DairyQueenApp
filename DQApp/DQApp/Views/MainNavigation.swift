//
//  Menu.swift
//  DQApp
//
//  Created by Consultant on 12/17/22.
//

import SwiftUI
struct MainNavigation: View {
    @State private var showingBottomSheet = true
    var body: some View {
            TabView{
                OrderView()
                    .tabItem{
                        Image(systemName: "questionmark")
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
                
                currentOrderView()
                    .tabItem{
                        Image(systemName: "bag")
                    }
                    
            }.accentColor(.blue)
            
//            .sheet(isPresented: $showingBottomSheet) {
//                Text("hello")
//            }
//            .padding()
//            .sheet(isPresented: $showingBottomSheet) {
//                Text("hello")
////
//            }
            
       
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigation()
    }
}
