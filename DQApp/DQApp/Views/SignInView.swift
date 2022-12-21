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


struct SignInView: View {
    @State var email = ""
    @State var password = ""
    @State var isShowingNextView = false
    @EnvironmentObject var viewModel: DQViewModel
    // MARK: Signed in Checkpoint
    var body: some View {
        
        
        // MARK: VSTACK
        
        VStack{
            HStack{
                Text("Sign In")
                    .font(.custom(
                        "helveticaNeue-CondensedBold",
                        fixedSize: 34))
                    .foregroundColor(.blue)
                    .padding(.leading, 21.0)
                Spacer()
            }
            
            HStack{
                Text("Not a member yet?")
                    .padding([.top, .leading], 21.0)
                NavigationLink("Create Account", destination: SignUpView())
                    .frame(alignment: .leading)
                    .padding([.top], 21)
                Spacer()
            }
            
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
                self.isShowingNextView = true
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
            NavigationLink(destination: MainNavigation().navigationBarBackButtonHidden(true), isActive: $isShowingNextView) {
                EmptyView()
            }
            
        }
        
        
        HStack{
            Button(action: {
                // Handles Navigation to forgot Password
            },label: {
                Text("Forgot Password")
                    .padding(.leading, 21.0)
                    .offset(x: -110)
            })
            .font(.system(size: 16, weight: .bold))
        }
        .padding()
        
        
        
        Spacer()
        
        
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
