//
//  AuthenticationHeader.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 20.11.2022.
//

import SwiftUI

struct AuthenticationHeaderView: View {
    let title1: String
    let title2: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack { Spacer() }
            Text(title1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(title2)
                .font(.largeTitle)
                .fontWeight(.semibold)
                
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

struct AuthenticationHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationHeaderView(title1: "Hello", title2: "Welcome back")
    }
}
