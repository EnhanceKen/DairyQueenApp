//
//  BagView.swift
//  DQApp
//
//  Created by Consultant on 12/21/22.
//

import SwiftUI

struct BagView: View {
    @EnvironmentObject var BagManager: BagManager
    var body: some View {
        ScrollView{
            Text("Your bag is empty")
        }
//        .navigationTitle("My Bag")
//        padding(.top)
    }
}

struct BagView_Previews: PreviewProvider {
    static var previews: some View {
        BagView()
            .environmentObject(BagManager())
    }
}
