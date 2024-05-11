//
//  LikeCellView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 12/05/24.
//

import SwiftUI

struct LikeCellView: View {
    let likeCount: Int
    
    var body: some View {
        HStack {
            if likeCount > 0 {
                Image("heart")
                    .resizable()
                    .frame(width: 24, height: 24)
                Text("\(likeCount)").bold()
            } else {
                Image("heart_outline")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            
            Spacer()
        }
        .padding(.leading)
    }
}

#Preview {
    LikeCellView(likeCount: 1)
}
