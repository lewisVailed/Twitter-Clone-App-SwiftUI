//
//  Twitter_Clone_App_SwiftUIApp.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 15.11.2022.
//

import SwiftUI
import Firebase

@main
struct Twitter_Clone_App_SwiftUIApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    
            }
            .environmentObject(viewModel)
        }
    }
}
