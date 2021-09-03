//
//  MainCoordinator.swift
//  CodeChallenge
//

import Foundation

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        // Start app on RedditFeedsViewController file
        let vc = RedditFeedsViewController()
        // ViewModel file
        vc.viewModel = RedditFeedViewModel()
        navigationController.pushViewController(vc, animated: false)
    }

}
