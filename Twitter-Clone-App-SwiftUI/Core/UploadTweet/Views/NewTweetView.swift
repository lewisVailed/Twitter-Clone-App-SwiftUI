//
//  NewTweetView.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 19.11.2022.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    var body: some View {
        VStack {
            HStack {
                Button {
                    //
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                Spacer()
                Button {
                    //
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .foregroundColor(.white)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                }
                
            }
            .padding()
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                TextArea(text: $caption, "What's happening?")
                    
            }
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
