//
//  BlizzardCard.swift
//  DQApp
//
//  Created by Consultant on 12/21/22.
//

import SwiftUI

struct BlizzardCard: View {
    @EnvironmentObject var BagManager: BagManager
    var blizzard : Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Button {
                    BagManager.addToBag(product: blizzard)
                }label: { 
                    Image(blizzard.image)
                        .resizable()
                        .frame(width:190, height: 190)
                        .background(Color.white)
                    .scaledToFit()
                }
                VStack(alignment: .leading){
                    Text(blizzard.name)
                        .font(.custom(
                            "helveticaNeue-Medium",
                            fixedSize: 11))
                        .multilineTextAlignment(.center)
                }
                
            }
            .frame(width: 220, height: 220)
        .shadow(radius: 3)
        }
    }
}

struct BlizzardCard_Previews: PreviewProvider {
    static var previews: some View {
        BlizzardCard(blizzard: BlizzardList[0])
            .environmentObject(BagManager())
    }
}
