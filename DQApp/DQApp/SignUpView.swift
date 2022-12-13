//
//  SignUpView.swift
//  DQApp
//
//  Created by Consultant on 12/12/22.
//

import SwiftUI

struct SignUpView: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var phoneNumber = ""
    
    @EnvironmentObject var viewModel: DQViewModel
    // MARK: Signed in Checkpoint
    var body: some View {
        
        
        // MARK: VSTACK
        
        VStack{
            //            NavigationLink("Creat Account", destination: SignUpView)
            
            TextField("First Name*", text: $firstName)
                .padding(7)
                .background(Color(.secondarySystemBackground))
                .frame(width: 350, height: 40)
                .cornerRadius(20)
            
            
            SecureField("Password*", text: $lastName)
                .padding(7)
                .background(Color(.secondarySystemBackground))
                .frame(width: 350, height: 40)
                .cornerRadius(20)
            
            TextField("Phone Number*", text: $phoneNumber)
                .padding(7)
                .background(Color(.secondarySystemBackground))
                .frame(width: 350, height: 40)
                .cornerRadius(20)
            
            
       
            
            
            Spacer()
//                        Button(action:{
//                            guard !firstName.isEmpty, !lastName.isEmpty, !phoneNumber.isEmpty else {
//                                return
//                            }
//
//                            viewModel.signIn(email: email, password: password)
//
//                        } , label: {
//                            Text("Continue")
//                                .foregroundColor(.white)
//                                .frame(width: 350, height: 35)
//                                .background(Color.blue)
//                                .cornerRadius(20)
//                        })
        }
        .padding()



        Spacer()

                    .navigationTitle("Let's Get Started")
//
    }
}
