//
//  DQAppApp.swift
//  DQApp
//
//  Created by Consultant on 12/12/22.
//

import SwiftUI
import Firebase

@main
struct DQAppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            let viewModel = DQViewModel()
            
            ContentView()
                .environmentObject(viewModel)
        }
    }
    
}
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
