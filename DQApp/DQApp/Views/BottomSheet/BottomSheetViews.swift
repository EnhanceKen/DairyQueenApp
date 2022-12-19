//
//  BottomSheetViews.swift
//  DQApp
//
//  Created by Consultant on 12/17/22.
//

import SwiftUI

struct BottomSheetViews: View {
    var body: some View {
        HStack{
            Button("Menu"){
               
            }
            .font(.title)
            
            .padding()
            Button("Recent Orders"){
                
            }
            .font(.title)
            .font(.system(size: 2))
        }
    }
}

struct BottomSheetViews_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetViews()
    }
}
