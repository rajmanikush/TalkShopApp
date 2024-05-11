//
//  PostView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import SwiftUI

struct PostView: View {
    var profile: ProfileModel

    var body: some View {
        GeometryReader { proxy in
            LazyVGrid(columns: [
                GridItem(.fixed(proxy.size.width/3)),
                GridItem(.fixed(proxy.size.width/3)),
                GridItem(.fixed(proxy.size.width/3))
            ]) {
                ForEach(profile.posts, id: \.postId) { post in
                    NavigationLink {
                        VideoContainerView(model: .init(username: profile.username,
                                                        userProfileUrl: profile.profilePictureUrl,
                                                        videoUrl: post.videoUrl,
                                                        likes: post.likes))
                    } label: {
                        NetworkImageView(url: post.thumbnailUrl)
                    }
                }
            }
        }
    }
}
