//
//  BagButton.swift
//  DQApp
//
//  Created by Consultant on 12/21/22.
//

import SwiftUI

struct BagButton: View {
    var numberOfProducts : Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(35)
                    
            }
        }
    }
}

struct BagButton_Previews: PreviewProvider {
    static var previews: some View {
        BagButton(numberOfProducts: 1)
    }
}
