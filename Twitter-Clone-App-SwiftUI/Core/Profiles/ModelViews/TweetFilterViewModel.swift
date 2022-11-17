//
//  TweetFilterViewModel.swift
//  Twitter-Clone-App-SwiftUI
//
//  Created by Ayberk Bilgiç on 16.11.2022.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
