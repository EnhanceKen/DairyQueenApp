//
//  BottomSheetViews.swift
//  DQApp
//
//  Created by Consultant on 12/17/22.
//

import SwiftUI
import SlidingTabView

struct BottomSheetViews: View {
    
    @State private var tabindex = 0
    var body: some View {
        VStack{
            SlidingTabView(selection: $tabindex, tabs:
                            ["menu", "recent Items"],
                           animation: .linear,
                           activeAccentColor: .black)
            Spacer()
            
            if tabindex == 0 {
                Menu()
            } else if tabindex == 1 {
                Image(systemName: "car")
            }
            
            
            Spacer()
        }
    }
}

struct BottomSheetViews_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetViews()
    }
}
