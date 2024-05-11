//
//  FeedView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import SwiftUI

struct FeedView: View {
    var data: [FeedModel]
    
    var body: some View {
            LazyVStack {
                ForEach(data, id: \.postId) { feed in
                    NavigationLink(destination: VideoContainerView(model: .init(
                        username: feed.username,
                        userProfileUrl: feed.userProfileUrl,
                        videoUrl: feed.videoUrl,
                        likes: feed.likes))) {
                        VStack {
                            UserSectionView(model: UserSectionModel(username: feed.username,
                                                                    userProfileUrl: feed.userProfileUrl))
                            NetworkImageView(url: feed.thumbnailUrl)
                                .scaledToFill()
                            LikeCellView(likeCount: feed.likes)
                        }
                        .padding(.bottom)
                    }
                    .foregroundColor(.black)
                }
            }
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    FeedMainView()
}
