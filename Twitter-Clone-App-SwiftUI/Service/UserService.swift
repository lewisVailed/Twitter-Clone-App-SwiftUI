//
//  UserService.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 30.11.2022.
//

import Firebase
import FirebaseFirestoreSwift
import FirebaseFirestore

struct UserService {
    
    func fetchUser(withUid uid: String) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let snapshot = snapshot else { return }
                
                guard let user = try? snapshot.data(as: User.self) else { return }
                
                print("DEBUG: username is \(user.userName)")
                print("DEBUG: email is \(user.email)")
            }
    }
}
