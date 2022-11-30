//
//  ProfilePhotoSelectorView.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 25.11.2022.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    @EnvironmentObject var AuthViewModel: AuthViewModel
    
    
    var body: some View {
        VStack {
            AuthenticationHeaderView(title1: "Setup account", title2: "Select a profile photo")
            
            Button {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        
                        .clipShape(Circle())
                } else {
                    VStack {
                        Image(systemName: "plus.diamond")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180 , height: 180)
                        Text("Photo")
                            .foregroundColor(Color(.systemBlue))
                            .font(.title2)
                            .bold()
                        
                    
                    }
                }
            }
            
            .sheet(isPresented: $showImagePicker,
                   onDismiss: loadImage) {
                ImagePicker(selectedImage: $selectedImage)
            }
            .padding(.top, 44)
            
            if let selectedImage = selectedImage {
                Button {
                    AuthViewModel.uploadProfileImage(selectedImage)
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(RoundedRectangle(cornerRadius: 25))
                        .padding(.top)
                }
                .padding(.top, 32)

            }
            
            Spacer()
        }
        .ignoresSafeArea()
        
        
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
    
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
