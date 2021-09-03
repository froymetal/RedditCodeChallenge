//
//  Coordinator.swift
//  CodeChallenge
//
//  Created by Froy on 8/27/21.
//

import UIKit

protocol Coordinator:AnyObject {
    var navigationController: UINavigationController { get set }
    func start()
}
