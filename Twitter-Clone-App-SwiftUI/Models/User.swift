//
//  User.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 30.11.2022.
//

import Firebase
import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let profileImageURL: String
    let userName: String
    let fullName: String
    let email: String
}
