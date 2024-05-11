//
//  PostView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import SwiftUI

protocol PostProtocol {
    var postId: String { get }
    var thumbnailUrl: String { get }
}

struct PostView: View {
    
    @State var posts: [PostProtocol]
    
    var body: some View {
        LazyVStack {
            ForEach(posts, id: \.postId) { post in
                VStack {
                    if let url = URL(string: post.thumbnailUrl) {
                        AsyncImage(url: url)
                            .aspectRatio(contentMode: .fill)
                    }
                    
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    PostView(posts: [
        Post(postId: "1",
             thumbnailUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
             videoURL: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
              likes: 5),
        
        Post(postId: "2",
             thumbnailUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg", videoURL: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
              likes: 5),
        ]
    )
}
