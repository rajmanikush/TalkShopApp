//
//  NetworkImageView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 11/05/24.
//

import SwiftUI

struct NetworkImageView: View {
    let url: String
    
    var body: some View {
        AsyncImage(url: URL(string: url)) { phase in
            switch phase {
            case .empty:
                Color.gray
            case let .success(image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)

            case .failure:
                Color.red
            @unknown default:
                Color.gray
            }
        }
    }
}
