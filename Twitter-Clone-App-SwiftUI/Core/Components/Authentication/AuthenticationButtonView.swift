//
//  AuthenticationButtonView.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 20.11.2022.
//

import SwiftUI

struct AuthenticationButtonView: View {
    var buttonActionText: String
    var text: String
    
    var body: some View {
        Button {
            print("sign in here")
        } label: {
            Text("Sign In")
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 340, height: 50)
                .background(RoundedRectangle(cornerRadius: 25))
                .padding(.top)
        }
        .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)

    }
}

struct AuthenticationButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationButtonView(buttonActionText: "sign in here", text: "Sign In")
    }
}
