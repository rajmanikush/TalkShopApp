//
//  NetworkProtocol.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import Foundation

protocol NetworkProtocol {
    func fetchProfile() async -> Result<ProfileResponse, Error>
}

