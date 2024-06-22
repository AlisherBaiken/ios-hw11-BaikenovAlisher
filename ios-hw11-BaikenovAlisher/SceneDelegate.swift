//
//  SceneDelegate.swift
//  ios-hw11-BaikenovAlisher
//
//  Created by Alisher on 20.06.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
//        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = TabbarController()
        window?.makeKeyAndVisible()
    }
}

