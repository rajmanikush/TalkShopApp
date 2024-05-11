//
//  VideoContainerView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 12/05/24.
//

import SwiftUI

struct VideoContainerView: View {
    let model: VideoModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("back")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 24, height: 24)
                    })
                    Spacer()
                }
                .padding()
                
                VideoPlayerView(videoURL: URL(string: model.videoUrl)!)
            }
            
            VStack {
                Spacer()
                UserSectionView(model: UserSectionModel(username: model.username,
                                                        userProfileUrl: model.userProfileUrl))
            }
            .foregroundColor(.white)
            .padding(.bottom)
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        if model.likes > 0 {
                            Image("heart")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("\(model.likes)")
                                .bold()
                                .foregroundColor(.white)
                        } else {
                            Image("heart_outline")
                                .resizable()
                                .frame(width: 24, height: 24)
                        }
                    }
                    .padding(.bottom)
                }
            }
            .padding(.bottom)

        }
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden, for: .tabBar)
        .background(.black)
        .ignoresSafeArea(edges: .bottom)
    }
}
