//
//  AccountView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import SwiftUI

struct ProfileRootView: View {
    
    @StateObject private var viewModel = ProfileViewModel()
    
    var body: some View {
        
        ScrollView {
            VStack {
                Circle()
                    .fill(.green)
                    .frame(width: 120, height: 120)
                
                Text("Rajmanikush")
                    .font(.body)
                    .fontWeight(.medium)
                    .padding(.bottom, 40)
                
                HStack {
                    Text("My Posts")
                        .font(.title2)
                        .fontWeight(.medium)
                    Spacer()
                }
                .padding(.leading)
                
                PostView(posts: [
                    Post(postId: "1",
                         thumbnailUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
                         videoURL: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
                         likes: 5),
                    
                    Post(postId: "2",
                         thumbnailUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg", videoURL: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
                         likes: 5),
                ])
                
            }
        }
        .onAppear(perform: {
            viewModel.didLoad()
        })
    }
}

#Preview {
    ProfileRootView()
}
