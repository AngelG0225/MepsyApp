//
//  MepsyAppApp.swift
//  MepsyApp
//
//  Created by Angel Guzman on 5/6/24.
//

import SwiftUI
import Firebase

@main
struct MepsyAppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            VStack {
                SplashScreen()
                AppDescription()
                AppDescription_2()
            }
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
