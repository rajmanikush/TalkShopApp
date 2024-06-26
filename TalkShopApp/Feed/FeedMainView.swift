//
//  FeedMainView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 11/05/24.
//

import SwiftUI

struct FeedMainView: View {
    @StateObject private var viewModel = FeedViewModel()
    @State private var isRefreshing = false
    @State private var isViewLoaded = false

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                switch viewModel.uiState {
                case .loading:
                    ProgressView("Loading...")
                case let .success(posts):
                    FeedView(data: posts)
                case .error(let message):
                    Text(message)
                }
            }
            .refreshable {
                isRefreshing = true
                viewModel.didLoad()
                isRefreshing = false
            }
            .onAppear(perform: {
                if !isViewLoaded {
                    viewModel.didLoad()
                    isViewLoaded = true
                }
            })
        }
    }
}

#Preview {
    FeedMainView()
}
