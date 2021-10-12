//
//  SceneDelegate.swift
//  Favorite Games
//
//  Created by Bruno Silva on 11/10/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    // MARK: - Variables
    var window: UIWindow?

    // MARK: - Functions
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = favoriteGameVC()
        window?.makeKeyAndVisible()
    }
    
    private func favoriteGameVC() -> UINavigationController {
        let favoriteGames = FavoriteGamesViewController()
        let navigationController = UINavigationController(rootViewController: favoriteGames)
        navigationController.navigationBar.prefersLargeTitles = true
        return navigationController
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}

