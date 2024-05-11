//
//  ContentView.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            FeedMainView()
                .tabItem { Label("Feed", systemImage: "house.fill") }
            
            ProfileRootView()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle.fill")
                    }
        }
    }
}

#Preview {
    HomeView()
}
