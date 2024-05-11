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
    var posts: [PostProtocol]

    var body: some View {
        GeometryReader { proxy in
            LazyVGrid(columns: [
                GridItem(.fixed(proxy.size.width/3)),
                GridItem(.fixed(proxy.size.width/3)),
                GridItem(.fixed(proxy.size.width/3))
            ]) {
                ForEach(posts, id: \.postId) { post in
                    NetworkImageView(url: post.thumbnailUrl)
                }
            }
        }
    }
}
