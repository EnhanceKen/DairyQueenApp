//
//  orderView.swift
//  DQApp
//
//  Created by Consultant on 12/17/22.
//

import SwiftUI

struct orderView: View {
    @State var showingBottomSheet = false
    
    var body: some View {
        VStack{
            Button("Tap"){
                showingBottomSheet.toggle()
            }
        }
        .padding()
        .sheet(isPresented: $showingBottomSheet) {
            BottomSheetViews()
                .presentationDetents([.height(100), .large])
            
        }
    }
    
}

struct orderView_Previews: PreviewProvider {
    static var previews: some View {
        orderView()
    }
}
