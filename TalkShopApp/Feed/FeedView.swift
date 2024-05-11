//
//  FeedView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import SwiftUI

struct LikeCellView: View {
    let likeCount: Int
    
    var body: some View {
        HStack {
            Image("heart")
                .resizable()
                .frame(width: 24, height: 24)
            
            if likeCount > 0 {
                Text("\(likeCount)").bold()
            }
            
            Spacer()
        }
        .padding(.leading)
    }
}

struct FeedView: View {
    var data: [FeedModel]
    
    var body: some View {
        LazyVStack {
            ForEach(data, id: \.postId) { feed in
                VStack {
                    UserSectionView(model: UserSectionModel(username: feed.username,
                                                            userProfileUrl: feed.userProfileUrl))
                    NetworkImageView(url: feed.thumbnailUrl)
                        .scaledToFill()
                    LikeCellView(likeCount: feed.likes)
                }
                .padding(.bottom)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    FeedMainView()
}
