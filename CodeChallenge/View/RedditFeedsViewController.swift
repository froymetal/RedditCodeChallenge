//
//  RedditFeedsViewController.swift
//  CodeChallenge
//
//  Created by Froy on 8/27/21.
//

import UIKit
import Combine

class RedditFeedsViewController: UIViewController {

    lazy var tableView:UITableView = {
       let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()


    var viewModel:RedditFeedViewModelType!

    private var cancellabel = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()

        configureDataBinding()
        viewModel.getRedditFeeds()
    }

    private func setupUI() {
        self.view.addSubview(tableView)

        tableView.register(RedditFeedTableViewCell.self, forCellReuseIdentifier: "Cell")

        tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant:0.0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant:0.0).isActive = true
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant:0.0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant:0.0).isActive = true

    }

    private func configureDataBinding() {
        viewModel
            .feedBinding
            .dropFirst()
            .receive(on: RunLoop.main).sink {[weak self] _ in
                self?.tableView.reloadData()
            }.store(in: &cancellabel)

        viewModel
            .errorBinding
            .dropFirst()
            .receive(on: RunLoop.main).sink {[weak self] _ in
              //  self?.showAlert()
            }.store(in: &cancellabel)
    }

}

extension RedditFeedsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier:"Cell", for: indexPath)

        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }


}

extension RedditFeedsViewController: UITableViewDelegate {

}

