//
//  RedditFeedRepository.swift
//  CodeChallenge
//
//  Created by Froy on 8/27/21.
//

import Foundation


protocol RedditFeedRepositoryService {
    func searchFeed<T:Decodable>(page:Int, modelType:T.Type, completionHandler:@escaping Completion<T> )
}


class RedditFeedRepository:BaseRepository, RedditFeedRepositoryService, DecodeJson {
    func searchFeed<T>(page:Int, modelType: T.Type, completionHandler: @escaping Completion<T>) where T : Decodable {
        networkManager.run(baseUrl: EndPoint.baseUrl, path:"", params: [:], requestType:RequestType.get) {[weak self] data, error in

            guard let data = data, error == nil else {
                completionHandler(.failure(.errorWith(message: error!.localizedDescription)))
                return
            }
            // Parsing data using JsonDecoder

            if let result = self?.decodeObject(input:data, type:modelType.self) {
                completionHandler(.success(result))
            }else {
                completionHandler(.failure(.parsinFailed(message:"")))
            }
        }
    }
}
