//
//  ProfileResponse.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import Foundation

// MARK: - ProfileResponse
struct ProfileResponse: Codable {
    let status: String
    let data: ProfileModel
}

// MARK: - ProfileModel
struct ProfileModel: Codable {
    let username: String
    let profilePictureUrl: String
    let posts: [Post]
}

// MARK: - Post
struct Post: Codable {
    var postId: String
    var thumbnailUrl: String
    let videoUrl: String
    let likes: Int
}
