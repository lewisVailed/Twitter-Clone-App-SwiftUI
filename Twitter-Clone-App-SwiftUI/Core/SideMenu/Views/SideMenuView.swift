//
//  SideMenuView.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 19.11.2022.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment : .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Bruce Wayne")
                        .font(.headline)
                    
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                
                UserStatsView()
                    .padding(.vertical)
                    
            }
            
            ForEach(SideMenuViewModel.allCases, id:  \.rawValue) { option in
                HStack(spacing: 12) {
                    Image(systemName: option.imageName)
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text(option.description)
                        .font(.subheadline)
                    Spacer()
                }
                .frame(height: 50)
            }
            Spacer()
        }
        .padding(.leading)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
