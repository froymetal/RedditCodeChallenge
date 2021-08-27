//
//  RedditFeedViewModel.swift
//  CodeChallenge
//
//  Created by Field Employee on 8/27/21.
//

import Foundation

protocol RedditFeedViewModelType {
    var feedBinding: Published<RedditFeedResponse?>.Publisher { get }
    var errorBinding: Published<String?>.Publisher { get }
    var numberOfItems: Int{ get }
    func getRedditFeeds()
}

class RedditFeedViewModel: RedditFeedViewModelType  {

    private var repository:RedditFeedRepositoryService?

    init(repository:RedditFeedRepositoryService = RedditFeedRepository()) {
        self.repository = repository
    }

    var feedBinding: Published<RedditFeedResponse?>.Publisher { $redditFeedResponse }
    var errorBinding: Published<String?>.Publisher { $errorMessage }

    var numberOfItems: Int {
        return redditFeedResponse?.data.children.count ?? 0
    }

    // MARK: - private properties
    @Published private var redditFeedResponse:RedditFeedResponse?
    @Published private var errorMessage:String?
    @Published private var searchResults:[RedditFeedResponse] = []


    func getRedditFeeds() {
        repository?.searchFeed(page: 1, modelType: RedditFeedResponse.self, completionHandler: { result in
            switch result {
            case .success(let response):
                self.redditFeedResponse = response
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }

}
