//
//  Menu.swift
//  DQApp
//
//  Created by Consultant on 12/17/22.
//

import SwiftUI
struct Menu: View {
    @State private var showingBottomSheet = false
    var body: some View {
        ZStack{
            TabView{
                orderView()
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
            }
            .padding()
            .sheet(isPresented: $showingBottomSheet) {
                BottomSheetViews()
                    .presentationDetents([.height(100), .large])
            }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
