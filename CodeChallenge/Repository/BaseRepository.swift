//
//  BaseRepository.swift
//  CodeChallenge
//
//  Created by Froy on 8/27/21.
//

import Foundation

typealias Completion<T:Decodable> =  ((Result<T, NetworkError>) -> Void)

class BaseRepository {
    var networkManager:Networkable

    init(networkManager:Networkable = NetworkManager()) {
        self.networkManager = networkManager
    }
}


