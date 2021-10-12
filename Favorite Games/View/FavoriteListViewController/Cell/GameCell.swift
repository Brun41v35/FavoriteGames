//
//  GameCell.swift
//  Favorite Games
//
//  Created by Bruno Silva on 12/10/21.
//

import UIKit

class GameCell: UITableViewCell {
    
    // MARK: - Variables
    var gameImageView = UIImageView()
    var gameTitleLabel = UILabel()
    
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    private func setup() {
        callSubViews()
        setupImageView()
        setupLabel()
        imageViewConstraints()
        titleLabelConstraints()
    }
    
    private func callSubViews() {
        addSubview(gameImageView)
        addSubview(gameTitleLabel)
    }
    
    private func setupImageView() {
        gameImageView.layer.cornerRadius = 10
        gameImageView.clipsToBounds = true
    }
    
    private func setupLabel() {
        gameTitleLabel.numberOfLines = 0
        gameTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    // MARK: - Functions
    func set(game: Game) {
        gameImageView.image = game.image
        gameTitleLabel.text = game.title
    }
    
    // MARK: - Constraints
    private func imageViewConstraints() {
        gameImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gameImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            gameImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            gameImageView.heightAnchor.constraint(equalToConstant: 150),
            gameImageView.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    private func titleLabelConstraints() {
        gameTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gameTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            gameTitleLabel.leadingAnchor.constraint(equalTo: gameImageView.trailingAnchor, constant: 20),
            gameTitleLabel.heightAnchor.constraint(equalToConstant: 80),
            gameTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12)
        ])
    }
}
