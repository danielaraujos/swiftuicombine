//
//  swiftuiandcombineApp.swift
//  swiftuiandcombine
//
//  Created by Daniel Araujo on 18/09/21.
//

import SwiftUI
import Firebase

@main
struct swiftuiandcombineApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self ) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
