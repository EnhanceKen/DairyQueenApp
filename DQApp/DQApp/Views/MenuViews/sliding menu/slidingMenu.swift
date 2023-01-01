//
//  slidingMenu.swift
//  DQApp
//
//  Created by Consultant on 12/20/22.
//

import SwiftUI
import SlidingTabView

struct slidingMenu: View {
        @State private var tabindex = 0
        var body: some View {
    
            VStack{
            
                SlidingTabView(selection: $tabindex, tabs:
                                ["TREATS", "FOOD", "DRINKS", "CAKES"],
                               animation: .linear,
                               activeAccentColor: .black)
               
                .font(.custom(
                        "helveticaNeue-Medium",
                        fixedSize: 11))
                .fontWeight(.semibold)
//                Spacer()
                
                if tabindex == 0 {
                    Treats()
                } else if tabindex == 1 {
                    Food()
                } else if tabindex == 2 {
                    Drinks()
                } else if tabindex == 3 {
                    Cakes()
                }
                
                
                Spacer()
            }
        }
    }

struct slidingMenu_Previews: PreviewProvider {
    static var previews: some View {
        slidingMenu()
    }
}
