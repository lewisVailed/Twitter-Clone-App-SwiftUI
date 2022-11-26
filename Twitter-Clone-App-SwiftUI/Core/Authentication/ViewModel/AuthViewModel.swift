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
    @Published var didAuthUser = false
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: user session is \(self.userSession?.uid)")
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to sign in with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            
            print("DEBUG: Did log user in")
            print("DEBUG: user is \(self.userSession)")
            
            
        }
    }
    
    func register(withEmail email: String, userName: String, fullName: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            
            
            print("DEBUG: Registered user successfully")
            print("DEBUG: user is \(self.userSession)")
            
            let data = ["email": email,
                        "username": userName.lowercased(),
                        "fullname": fullName,
                        "uid": user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.didAuthUser = true
                }
        }
    }
    
    func logOut() {
        userSession = nil
        // user log out on backend
        try? Auth.auth().signOut()
    }
    
}
