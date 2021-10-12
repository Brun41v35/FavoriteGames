//
//  FavoriteGamesViewController.swift
//  Favorite Games
//
//  Created by Bruno Silva on 11/10/21.
//

import UIKit

class FavoriteGamesViewController: UIViewController {
    
    // MARK: - Constants and Variables
    let favoriteGamesView = FavoriteGamesView()
    let myCell: String = "GameCell"
    var games: [Game] = []
    
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
        games = fetchData()
        registerCell()
    }
    
    private func setupTitle() {
        title = "Favorite Games 💕"
    }
    
    private func setupTableViewDelegates() {
        favoriteGamesView.tableView.delegate = self
        favoriteGamesView.tableView.dataSource = self
    }
    
    private func registerCell() {
        favoriteGamesView.tableView.register(GameCell.self, forCellReuseIdentifier: myCell)
    }
}

//MARK: - Extension
extension FavoriteGamesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = favoriteGamesView.tableView.dequeueReusableCell(withIdentifier: myCell) as! GameCell
        let game = games[indexPath.row]
        cell.set(game: game)
        
        return cell
    }
}

extension FavoriteGamesViewController {
    
    func fetchData() -> [Game] {
        let game1 = Game(image: Images.bo2, title: "Call of Duty: Black Ops II")
        let game2 = Game(image: Images.deadSpace2, title: "Dead Space")
        let game3 = Game(image: Images.fifa, title: "FIFA 22")
        let game4 = Game(image: Images.finaFantasy, title: "Final Fantasy XV")
        let game5 = Game(image: Images.godOfWar, title: "God of War")
        let game6 = Game(image: Images.halo, title: "Halo Infinity")
        let game7 = Game(image: Images.kingdom, title: "Kingdom Heartz")
        let game8 = Game(image: Images.mw2, title: "Call of Duty: Black Ops II")
        let game9 = Game(image: Images.mw3, title: "Call of Duty: Black Ops II")
        let game10 = Game(image: Images.theLast, title: "The Last of Us")
        
        return [game1, game2, game3, game4, game5, game6, game7, game8, game9, game10]
    }
}

