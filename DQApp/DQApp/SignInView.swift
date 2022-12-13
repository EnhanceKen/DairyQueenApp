//
//  SignInView.swift
//  DQApp
//
//  Created by Consultant on 12/12/22.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        Image(systemName: "bell")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:200,
                   height:200,
                   alignment: .center)
            .padding()
       
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
