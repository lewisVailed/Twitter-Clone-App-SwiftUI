//
//  ProfileView.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 16.11.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            
            actionButtons
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Heath Ledger")
                        .font(.title2)
                        .bold()
                    
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Text("@joker")
                    .font(.subheadline)
                    .foregroundColor(Color(.systemGray))
                
                Text("No content")
                    .font(.subheadline)
                    .padding(.vertical)
                
                HStack(spacing: 24) {
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        
                        Text("Gotham, New York")
                    }
                    HStack {
                        Image(systemName: "link")
                        Text("thejoker.com")
                            
                    }
                }
                .font(.caption)
                .foregroundColor(Color(.systemGray))
                 
                HStack(spacing: 24) {
                    HStack(spacing: 4) {
                        Text("512")
                            .font(.subheadline)
                            .bold()
                        Text("Following")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray))
                        
                    }
                    HStack {
                        Text("4M")
                            .font(.subheadline)
                            .bold()
                        Text("Followers")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray))
                            
                    }
                }
                .padding(.vertical)
            }
           .padding(.horizontal)
            
            Spacer()
        }
   
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    //
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                }

                
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)
            }
                
        }
        .frame(height: 96)
        
    }
    
    var actionButtons: some View {
        HStack(spacing: 12) {
            Spacer()
            Button {
                //
            } label: {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.black)
                    .padding(6)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
                    
            }

            Button {
                //
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
                
            }

        }
        .padding(.trailing)
        
    }
    
}
