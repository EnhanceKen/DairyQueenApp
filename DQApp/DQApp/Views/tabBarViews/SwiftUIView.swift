//
//  SwiftUIView.swift
//  
//
//  Created by Consultant on 12/20/22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Button(action: {
            // button action here
        }) {
            Text("Button")
        }
        .frame(width: 200, height: 50)
        .cornerRadius(10, corners: [.topRight, .bottomLeft])
        .buttonStyle(PlainButtonStyle())
        .background(Color.blue)
        .font(.title)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
