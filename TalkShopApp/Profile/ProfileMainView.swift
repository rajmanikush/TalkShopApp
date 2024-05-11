//
//  ProfileMainView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 11/05/24.
//

import SwiftUI

struct ProfileRootView: View {
    @StateObject private var viewModel = ProfileViewModel()
    
    var body: some View {
        ScrollView {
            switch viewModel.uiState {
            case .loading:
                ProgressView("Loading...")
            case let .success(profileModel):
                ProfileView(model: profileModel)
            case .error(let message):
                Text(message)
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
