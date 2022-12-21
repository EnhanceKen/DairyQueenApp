//
//  SignUpView.swift
//  DQApp
//
//  Created by Consultant on 12/12/22.
//

import SwiftUI

struct signedUpView: View {
    @EnvironmentObject var viewModel: DQViewModel

    var body: some View {
        NavigationView{
            if viewModel.signedUP{
              MainNavigation()
            }
            else {
                SignInView()
            }
        }
        .onAppear{
            viewModel.signedIn = viewModel.isSignedIn
        }
    }
}




struct SignUpView: View {
    
    @State var email = ""
    @State var password = ""
    @State var isShowingNextView = false
    
    @EnvironmentObject var viewModel: DQViewModel
    // MARK: Signed in Checkpoint
    var body: some View {
        
        
        // MARK: VSTACK
        
        VStack{
          
            TextField("Email*", text: $email)
                .disableAutocorrection(true)
                .padding(7)
                .background(Color(.secondarySystemBackground))
                .frame(width: 350, height: 40)
                .cornerRadius(20)
            
            
            SecureField("Password*", text: $password)
                .disableAutocorrection(true)
                .padding(7)
                .background(Color(.secondarySystemBackground))
                .frame(width: 350, height: 40)
                .cornerRadius(20)
            
            
            Spacer()
                        Button(action:{                            
                         registerNewUser()
                            self.isShowingNextView = true
                        }) {
                            Text("Continue")
                                .foregroundColor(.white)
                                .frame(width: 350, height: 35)
                                .background(Color.blue)
                                .cornerRadius(20)
                        }
                        .padding()
                        
                        
                        
                        .navigationTitle("Lets Get Started")
            NavigationLink(destination: MainNavigation().navigationBarBackButtonHidden(true), isActive: $isShowingNextView) {
                EmptyView()
            }
            
                            
        
        }
      
    }
    func registerNewUser(){
        guard !email.isEmpty, !password.isEmpty else {
            return
        }
        viewModel.signUp(email: email, password: password)
    }
}


//guard !email.isEmpty, !password.isEmpty else {
//    return
//}
//viewModel.signUp(email: email, password: password)




   
