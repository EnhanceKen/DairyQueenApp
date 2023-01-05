//
//  SignInView.swift
//  DQApp
//
//  Created by Consultant on 12/12/22.
//

import SwiftUI
import FirebaseAuth
import AuthenticationServices

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

struct appleView: View{
    @AppStorage("email") var email: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    @AppStorage("userId") var userId: String = ""
    

    private var appleSignedIn: Bool{
        !userId.isEmpty
    }
    var body: some View{
        VStack{
            if userId.isEmpty{
                SignInView()
            }
            else{
                MainNavigation()
            }
            
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
        
     AppleSignedInView()
        
        
        Spacer()
        
        
        
    }
}

struct AppleSignedInView: View {
    @AppStorage("email") var email: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    @AppStorage("userId") var userId: String = ""
    

    var body: some View {
        SignInWithAppleButton(.continue) { request in
            
            request.requestedScopes = [.email, .fullName]
            
        } onCompletion: { result in
            
            switch result{
            case .success(let auth):
                
                switch auth.credential{
                case let credential as ASAuthorizationAppleIDCredential:
                    
                    let email = credential.email
                    let firstName = credential.fullName?.givenName
                    let lastName = credential.fullName?.familyName
                    
                    self.email = email ?? ""
                    self.userId = userId
                    self.firstName = firstName ?? ""
                    self.lastName = lastName ?? ""
                    
                    
                    // User ID
                    let userId = credential.user
                default:
                    break
                }
                
            case .failure(let error):
                print(error)
            }
            
        }
        .frame(width: 350, height: 35)
        .padding()
        .cornerRadius(40)
    }
}





struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
