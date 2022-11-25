//
//  LoginView.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 19.11.2022.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
           AuthenticationHeaderView(title1: "Hello", title2: "Welcome back")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope",
                                 placeHolderText: "Email",
                                 text: $email)
                
                CustomInputField(imageName: "lock",
                                 placeHolderText: "Password",
                                 isSecureField: true,
                                 text: $password)
                    
            }
            .padding(.horizontal, 32)
            .padding(.top, 46)
            
            HStack {
                Spacer()
                
                Button {
                    print("reset password screen")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing, 24)
                }
            }
            
            Button {
                viewModel.login(withEmail: email,
                                password: password)
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(RoundedRectangle(cornerRadius: 25))
                    .padding(.top)
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)

            
            Spacer()
            
            AuthenticationBottomView(title1: "Don't have an account?", title2: "Sign Up", whatView: RegisterView())

        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
