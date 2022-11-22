//
//  AuthViewModel.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 21.11.2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: user session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String) {
        print("DEBUG: login with email \(email)")
    }
    
    func register(withEmail email: String, userName: String, fullName: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            
            print("DEBUG: Registered user successfully")
            print("DEBUG: user is \(self.userSession)")
        }
    }
    
}
