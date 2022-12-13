//
//  DQViewModel.swift
//  DQApp
//
//  Created by Consultant on 12/12/22.
//

import Foundation
import SwiftUI
import FirebaseAuth

class DQViewModel: ObservableObject {
    let auth = Auth.auth()
    
    @Published var signedIn = false
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email,
                    password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                return
            }
            DispatchQueue.main.async {
                //sucess
                self?.signedIn = true
            }
        }
    }
    
//    func signUp(email: String, password: String, phone: Int) {
//        auth.createUser(firstName: email,
//                        lastName: password
//                        FIRVerifyPhoneNumberRequest: phoneNumber ) { [weak self] result, error in
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
}
