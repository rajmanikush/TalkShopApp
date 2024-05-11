//
//  ProfileService.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 11/05/24.
//

import Foundation

protocol ProfileService {
    func getProfile(username: String, completion: @escaping (Result<ProfileModel, NetworkError>) -> Void)
}

final class MockProfileService: ProfileService {
    
    private var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
    
    func getProfile(username: String, completion: @escaping (Result<ProfileModel, NetworkError>) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + .milliseconds(500)) { [weak self] in
            guard let self else { return }
            guard let fileURL = Bundle.main.url(forResource: "profile", withExtension: "json") else {
                completion(.failure(.serverError))
                return
            }
            
            do {
                let jsonData = try Data(contentsOf: fileURL)
                let response = try decoder.decode(ProfileResponse.self, from: jsonData)
                
                completion(.success(response.data))
            } catch {
                completion(.failure(.other(error)))
            }
        }
    }
}


