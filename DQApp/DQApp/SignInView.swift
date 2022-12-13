//
//  SignInView.swift
//  DQApp
//
//  Created by Consultant on 12/12/22.
//

import SwiftUI
import FirebaseAuth

//
//class DQViewModel: ObservableObject {
//    let auth = Auth.auth()
//    
//    @Published var signedIn = false
//    
//    var isSignedIn: Bool {
//        return auth.currentUser != nil
//    }
//    
//    func signIn(email: String, password: String) {
//        auth.signIn(withEmail: email,
//                    password: password) { [weak self] result, error in
//            guard result != nil, error == nil else {
//                return
//            }
//            DispatchQueue.main.async {
//                //sucess
//                self?.signedIn = true
//            }
//        }
//    }
//    
//    func signUp(email: String, password: String) {
//        auth.createUser(withEmail: email,
//                        password: password) { [weak self] result, error in
//            guard result != nil, error == nil else {
//                return
//            }
//            DispatchQueue.main.async {
//                //sucess
//                self?.signedIn = true
//            }
//            
//        }
//    }
//}





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
            NavigationLink("Creat Account", destination: SignUpView())
                .frame(alignment: .leading)
            
            TextField("Email Adress", text: $email)
                .padding(7)
                .background(Color(.secondarySystemBackground))
                .frame(width: 350, height: 40)
                .cornerRadius(20)
            
            
            SecureField("Password", text: $password)
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
