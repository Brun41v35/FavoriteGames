//
//  FavoriteGamesViewController.swift
//  Favorite Games
//
//  Created by Bruno Silva on 11/10/21.
//

import UIKit

class FavoriteGamesViewController: UIViewController {
    
    // MARK: - LifeCycle
    let favoriteGamesView = FavoriteGamesView()
    
    // MARK: - LifeCycle
    override func loadView() {
        view = favoriteGamesView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setup()
    }
    
    //MARK: - Setup
    private func setup() {
        setupTableViewDelegates()
        setupTitle()
    }
    
    private func setupTitle() {
        title = "Favorite Games 💕"
    }
    
    private func setupTableViewDelegates() {
        favoriteGamesView.tableView.delegate = self
        favoriteGamesView.tableView.dataSource = self
    }
}

//MARK: - Extension
extension FavoriteGamesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}

