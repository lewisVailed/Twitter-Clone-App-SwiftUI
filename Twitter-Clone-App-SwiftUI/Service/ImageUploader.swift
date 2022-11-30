//
//  ImageUploader.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 26.11.2022.
//

import Firebase
import FirebaseStorage
import UIKit

struct ImageUploader {
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        let fileName = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(fileName)")
            
        ref.putData(imageData, metadata: nil) { _ , error in
            if let error = error {
                print("DEBUG: failed to upload image with error \(error.localizedDescription) ")
                return
            }
            
            ref.downloadURL { imageURL, _ in
                guard let imageURL = imageURL?.absoluteString else { return }
                completion(imageURL)
            }
        }
    }
}
