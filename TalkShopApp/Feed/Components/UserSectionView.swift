//
//  UserSectionView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 11/05/24.
//

import SwiftUI

struct UserSectionModel {
    let username: String
    let userProfileUrl: String?
}

struct UserSectionView: View {
    let model: UserSectionModel
    
    var body: some View {
        HStack {
            if let profileUrl = model.userProfileUrl {
                NetworkImageView(url: profileUrl)
                    .frame(width: 44, height: 44)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
            } else {
                Circle()
                    .fill(.gray)
                    .frame(width: 44, height: 44)
            }
            
            Text(model.username)
                .font(.headline)
            
            Spacer()
        }
        .padding(.leading)
    }
}

#Preview {
    UserSectionView(model: UserSectionModel(
        username: "rajmani",
        userProfileUrl: "https://www.gravatar.com/avatar/06fd7bd96b7dad6762047a633f8aa181?s=238&r=g&d=mm"))
}
