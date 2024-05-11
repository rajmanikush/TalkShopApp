//
//  Networking.swift
//  TalkShopApp
//
//  Created by Rajmani Kushwaha on 11/05/24.
//

import Foundation

protocol Networking {
    var baseUrl: String { get }
}

enum NetworkError: Error {
    case noInternet
    case serverError
    case decodeError
    case other(Error)
}
