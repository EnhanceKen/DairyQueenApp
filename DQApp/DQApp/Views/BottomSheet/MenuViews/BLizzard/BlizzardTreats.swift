//
//  BlizzardTreats.swift
//  DQApp
//
//  Created by Consultant on 12/21/22.
//

import SwiftUI

struct BlizzardTreats: View {
    var body: some View {
        ZStack{
            Image("BlueBackground")
            VStack{
                
            HStack{
                Button(action: {}) {
                    VStack(alignment: .center, spacing: 5.0) {
                        Image("BLZRDTreat")
                            .resizable(capInsets: .init(), resizingMode: .stretch)
                            .frame(maxWidth: 176, maxHeight: 165)
                            .padding(.leading, 10.0)
                        Text("New! REESES® TAKE5® BLIZZARD® Treat ")
                            .foregroundColor(.black)
                            .padding(.all, 10.0)
                            .font(.custom(
                                    "helveticaNeue-Medium",
                                    fixedSize: 15))
                
                    }
                    .frame(width: 176.0, height: 180.0)
                }
                .background(Color.white)
    
                Button(action: {}) {
                    VStack(alignment: .center, spacing: 5.0) {
                        Image("webp")
                            .resizable(capInsets: .init(), resizingMode: .stretch)
                            .frame(maxWidth: 176, maxHeight: 165)
                        
                            .padding(.leading, 10.0)
                        
                        Text("New! REESES® TAKE5® BLIZZARD® Treat")
                            .foregroundColor(.black)
                            .padding(.all, 10.0)
                            .font(.custom(
                                    "helveticaNeue-Medium",
                                    fixedSize: 15))
                    }
                }
                .frame(width: 176.0, height: 180.0)
                .background(Color.white)
    
                
            }
        }
    }
    }
}

//MARK: Structs for new buttons Here








struct BlizzardTreats_Previews: PreviewProvider {
    static var previews: some View {
        BlizzardTreats()
    }
}
