//
//  orderView.swift
//  DQApp
//
//  Created by Consultant on 12/17/22.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        
            ScrollView{
                VStack{
                Text("testing")
                
                Spacer(minLength: 0)
                    .frame(height: 500)
                
                
                    BottomSheetViews()
                    
                }
        }
    }
}

struct orderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
