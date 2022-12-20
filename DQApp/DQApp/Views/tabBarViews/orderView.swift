//
//  orderView.swift
//  DQApp
//
//  Created by Consultant on 12/17/22.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        VStack {
            
            BottomSheet(content: {
                BottomSheetViews()
            }, initialPosition: 400, expansionBehavior: .fullScreen)
        }
    }
}

struct orderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
