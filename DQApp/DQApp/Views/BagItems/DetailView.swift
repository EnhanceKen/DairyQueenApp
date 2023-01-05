//
//  DetailView.swift
//  DQApp
//
//  Created by Consultant on 1/4/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case Mini
    case Small
    case Medium
    case Large
}

struct DetailView: View{
    @EnvironmentObject var BagManager: BagManager
    var product : Product
    
    var body: some View{
        VStack{
            Image(product.image)
                .resizable()
                .frame(width:190, height: 210)
                .background(Color.white)
            .scaledToFit()
            
            Text(product.name)
                .font(.custom(
                    "helveticaNeue-bold",
                    fixedSize: 20))
                .multilineTextAlignment(.leading)
                .padding()
            
            MealSizeTab(selectedTab: .constant(.Mini))
            Divider()
                .frame(width: 360, height: 1)
                .overlay(.blue)
                .padding()
            
            //MARK: Add Customize button
            Text("Customize Button")
            Divider()
                .frame(width: 360, height: 1)
                .overlay(.blue)
                .padding()
            
           // MARK: use this for adding item function
            Text("ADD +/- Here")
            
            Spacer()
            Text("2,000 calories a day is used for general nutrition advice, but calorie needs vary. Additional nutrition information availible by tapping the button below.")
                .font(.custom(
                    "helveticaNeue-light",
                    fixedSize: 12))
                .multilineTextAlignment(.center)
                .padding(1)
                
            
            Text("Menu items may vary by location and are subject to change.")
                .font(.custom(
                    "helveticaNeue-light",
                    fixedSize: 12))
                .padding()
        }
    }
}




struct MealSizeTab: View {
    @Binding var selectedTab: Tab
    private var fillWord: String{
        selectedTab.rawValue
    }
    
    var body: some View {
        VStack{
            HStack{
                ForEach(Tab.allCases, id: \.rawValue) {tab in
                    Spacer()
                   
                    Text(selectedTab == tab ? fillWord: tab.rawValue)
                        .font(.custom(
                            "helveticaNeue-Medium",
                            fixedSize: 14))
                        .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                        .foregroundColor(tab == selectedTab ? .blue : .black)
                        .onTapGesture{
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    
                    Spacer()
                    
                }
                
            }
            .frame(width: 350, height: 45)
            .background(.thinMaterial)
            .cornerRadius(30)
            .padding()
        }
        
        
    }
}



struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
//        DetailView(selectedTab: .constant(.Mini))
        DetailView(product: BlizzardList[3])
            .environmentObject(BagManager())
    }
}
