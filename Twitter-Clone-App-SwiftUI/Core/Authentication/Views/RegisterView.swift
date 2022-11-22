//
//  RegisterView.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 19.11.2022.
//

import SwiftUI

struct RegisterView: View {
     
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var email = ""
    @State private var fullname =  ""
    @State private var username =  ""
    @State private var password =   ""
    
    var body: some View {
        VStack {
            AuthenticationHeaderView(title1: "Get Started.", title2: "Create your account")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeHolderText: "Email", text: $email)
                
                CustomInputField(imageName: "person", placeHolderText: "Username", text: $username)
                
                CustomInputField(imageName: "person", placeHolderText: "Full name", text: $fullname)
                
                CustomInputField(imageName: "lock", placeHolderText: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 46)
            .padding(.bottom, 46)

            
            Button {
                viewModel.register(withEmail: email,
                                   userName: username,
                                   fullName: fullname,
                                   password: password)
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(RoundedRectangle(cornerRadius: 25))
                    .padding(.top)
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.subheadline)
                .foregroundColor(Color(.systemBlue))
                
            }
            .padding()
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
