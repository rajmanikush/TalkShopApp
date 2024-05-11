//
//  FeedResponse.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import Foundation

// MARK: - FeedResponse
struct FeedResponse: Codable {
    let status: String
    let data: [FeedModel]
}

// MARK: - FeedModel
struct FeedModel: Codable {
    let postId: String
    let videoUrl: String
    let thumbnailUrl: String
    let username: String
    let likes: Int
    let userProfileUrl: String?
}
