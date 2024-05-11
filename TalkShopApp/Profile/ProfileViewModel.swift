//
//  ProfileViewModel.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import Foundation

enum ProfileUIState {
    case loading
    case success(ProfileModel)
    case error(message: String)
}

final class ProfileViewModel: ObservableObject {
    
    private let networkService: ProfileService
    
    @Published var uiState: ProfileUIState = .loading
    
    init(networkService: ProfileService = MockProfileService()) {
        self.networkService = networkService
    }
    
    func didLoad() {
        uiState = .loading
        
        networkService.getProfile(username: "") { [weak self] result in
            DispatchQueue.main.async { [weak self] in
                guard let self else { return }
                switch result {
                case let .success(response):
                    uiState = .success(response)
                case let .failure(error):
                    uiState = .error(message: error.localizedDescription)
                }
            }
        }
    }
}
