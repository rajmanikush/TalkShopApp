//
//  AccountView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import SwiftUI

struct ProfileView: View {
    let model: ProfileModel
        
    var body: some View {
        VStack {
            NetworkImageView(url: model.profilePictureUrl)
                .frame(width: 120, height: 120)
                .clipShape(Circle())
            
            Text(model.username)
                .font(.body)
                .fontWeight(.medium)
                .padding(.bottom, 24)
            
            HStack {
                Text("My Posts")
                    .font(.title2)
                    .fontWeight(.medium)
                Spacer()
            }
            .padding(.leading)
            
            PostView(posts: model.posts)
        }
    }
}

#Preview {
    ProfileView(model: ProfileModel(username: "rajmanikush",
                                    profilePictureUrl: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D",
                                    posts: [
                                        Post(postId: "1",
                                             thumbnailUrl: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/youtube-thumbnail-red-background-design-template-bf08aa14f7cddd8dfb2febe28f7846ec_screen.jpg?ts=1697324475",
                                             videoUrl: "",
                                             likes: 1),
                                        Post(postId: "2",
                                             thumbnailUrl: "https://www.techsmith.com/blog/wp-content/uploads/2021/02/TSC-thumbnail-example-1024x576.png",
                                             videoUrl: "",
                                             likes: 1),
                                        Post(postId: "3",
                                             thumbnailUrl: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/youtube-thumbnail-red-background-design-template-bf08aa14f7cddd8dfb2febe28f7846ec_screen.jpg?ts=1697324475",
                                             videoUrl: "",
                                             likes: 1)
                                    ]))
}
