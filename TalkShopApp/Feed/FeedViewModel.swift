//
//  FeedViewModel.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import Foundation

enum FeedUIState {
    case loading
    case success(posts: [FeedModel])
    case error(message: String)
}

final class FeedViewModel: ObservableObject {
    
    private let feedService: FeedService
    
    @Published var uiState: FeedUIState = .loading
    
    init(feedService: FeedService = MockFeedService()) {
        self.feedService = feedService
    }
    
    func didLoad() {
        uiState = .loading
        
        feedService.getFeeds { [weak self] result in
            guard let self else { return }
            switch result {
            case let .success(posts):
                uiState = .success(posts: posts)
            case let .failure(error):
                uiState = .error(message: error.localizedDescription)
            }
        }
    }
}
