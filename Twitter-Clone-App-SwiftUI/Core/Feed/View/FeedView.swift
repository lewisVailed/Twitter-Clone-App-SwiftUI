//
//  FeedView.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 15.11.2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetRowView()
                           
                    }
                }
            }
            
            Button {
                print("show new tweet screen")
            } label: {
                Image("tweet")
                    .resizable()
                    
                    .frame(width: 128, height: 96)
                    .padding(.vertical)
            }

        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
        
        
            
    }
}
