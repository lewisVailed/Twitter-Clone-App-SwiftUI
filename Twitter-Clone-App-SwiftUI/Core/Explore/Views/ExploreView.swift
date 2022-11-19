//
//  ExploreView.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 15.11.2022.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(0...15, id: \.self) { _ in
                            NavigationLink {
                                ProfileView()
                            } label: {
                                UserRowView()
                            }
                            
                          }
                      }
                  }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
        }
        
      
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
