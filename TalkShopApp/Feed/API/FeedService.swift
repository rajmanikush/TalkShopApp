//
//  FeedService.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 10/05/24.
//

import Foundation

protocol FeedService {
    func getFeeds(completion: @escaping (Result<[FeedModel], NetworkError>) -> Void)
}

final class MockFeedService: FeedService {
    
    private var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
    
    func getFeeds(completion: @escaping (Result<[FeedModel], NetworkError>) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + .milliseconds(800)) { [weak self] in
            guard let self else { return }
            guard let fileURL = Bundle.main.url(forResource: "feed", withExtension: "json") else {
                completion(.failure(.serverError))
                return
            }
            
            do {
                let jsonData = try Data(contentsOf: fileURL)
                let response = try decoder.decode(FeedResponse.self, from: jsonData)
                
                completion(.success(response.data ))
            } catch {
                completion(.failure(.other(error)))
            }
        }
    }
}


