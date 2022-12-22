//
//  Cakes.swift
//  DQApp
//
//  Created by Consultant on 12/19/22.
//

import SwiftUI

struct Cakes: View {
    var body: some View {
        ZStack{
            Image("RedBackground")
                .resizable(capInsets: EdgeInsets(top: 12.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .edgesIgnoringSafeArea(.all)
        VStack{
            Button(action: {
                // Button action here
            }) {
                Text("DQ® Cakes")
                    .foregroundColor(.black)
                    .font(.custom(
                            "helveticaNeue-Medium",
                            fixedSize: 20))
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 100)
                    .background(Color.white)
                    .cornerRadius(20, corners: [.topLeft, .bottomRight])
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0.0, y: 10)
            }
            Spacer()
        }
        }
    }
}

struct Cakes_Previews: PreviewProvider {
    static var previews: some View {
        Cakes()
    }
}
