//
//  MainCoordinator.swift
//  CodeChallenge
//
//  Created by Froy on 8/27/21.
//

import Foundation

import UIKit

protocol Coordinator:AnyObject {
    var navigationController: UINavigationController { get set }
    func start()
}

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {

        let vc = RedditFeedsViewController()
        vc.viewModel = RedditFeedViewModel()
       // vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }

}
