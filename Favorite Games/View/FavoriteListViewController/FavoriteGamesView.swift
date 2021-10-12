//
//  FavoriteGamesView.swift
//  Favorite Games
//
//  Created by Bruno Silva on 12/10/21.
//

import UIKit

public class FavoriteGamesView: UIView {
    
    // MARK: - Varibles
    lazy var tableView = makeTableView()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    private func setup() {
        callSubViews()
        backgroundColor()
        callConstraints()
    }
    
    private func backgroundColor() {
        backgroundColor = .systemRed
    }
    
    private func callSubViews() {
        addSubview(tableView)
    }
    
    // MARK: - Functions
    private func makeTableView() -> UITableView {
        let tableView = UITableView()
        tableView.rowHeight = 200
        return tableView
    }
    
    // MARK: - Constraints
    private func callConstraints() {
        tableView.pin(to: self)
    }
}
