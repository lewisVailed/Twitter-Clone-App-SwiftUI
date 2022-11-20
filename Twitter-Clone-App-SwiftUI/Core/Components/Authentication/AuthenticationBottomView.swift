//
//  AuthenticationBottomView.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 20.11.2022.
//

import SwiftUI

struct AuthenticationBottomView: View {
    var title1: String
    var title2: String
    var whatView = RegisterView()
    
    var body: some View {
        NavigationLink {
            whatView
                .navigationBarHidden(true)
        } label: {
            HStack {
                Text(title1)
                Text(title2)
                    .fontWeight(.semibold)
            }
            .font(.subheadline)
            .foregroundColor(Color(.systemBlue))
            
        }
        .padding()
    }
}

struct AuthenticationBottomView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationBottomView(title1: "Don't have an account?", title2: "Sign Up", whatView: RegisterView())
    }
}
