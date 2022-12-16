//
//  SignInView.swift
//  DQApp
//
//  Created by Consultant on 12/12/22.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @EnvironmentObject var viewModel: DQViewModel

    var body: some View {
        NavigationView{
            if viewModel.signedIn{
                Text("You are signed in")
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


struct SignInView: View {
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: DQViewModel
    // MARK: Signed in Checkpoint
    var body: some View {
        
        
        // MARK: VSTACK
        
        VStack{
            NavigationLink("Create Account", destination: SignUpView())
                .frame(alignment: .leading)
                
            
            TextField("Email Adress", text: $email)
                .disableAutocorrection(true)
                .padding(7)
                .background(Color(.secondarySystemBackground))
                .frame(width: 350, height: 40)
                .cornerRadius(20)
            
            
            SecureField("Password", text: $password)
                .disableAutocorrection(true)
                .padding(7)
                .background(Color(.secondarySystemBackground))
                .frame(width: 350, height: 40)
                .cornerRadius(20)
            
            Button(action:{
                guard !email.isEmpty, !password.isEmpty else {
                    return
                }
                
                viewModel.signIn(email: email, password: password)
                
            } , label: {
                Text("SIGN IN")
                    .foregroundColor(.white)
                    .frame(width: 350, height: 35)
                    .background(Color.blue)
                    .cornerRadius(20)
            })
        }
        
        HStack{
            Spacer()
            Button(action: {
                // Handles Navigation to forgot Password
            },label: {
                Text("Forgot Password")
                    .offset(x: -215)
            })
            .font(.system(size: 16, weight: .bold))
        }
        .padding()
        
        
        
        Spacer()
        
            .navigationTitle("Sign In")
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
