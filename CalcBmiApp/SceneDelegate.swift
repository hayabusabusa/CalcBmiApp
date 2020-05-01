//
//  SceneDelegate.swift
//  CalcBmiApp
//
//  Created by 山田隼也 on 2020/04/30.
//  Copyright © 2020 Shunya Yamada. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        setupRootViewController(scene: scene)
    }
}

// MARK: - Setup Root ViewController

extension SceneDelegate {
    
    private func setupRootViewController(scene: UIWindowScene) {
        let window = UIWindow(windowScene: scene)
        let inputVC = UIStoryboard(name: "InputViewController", bundle: nil).instantiateInitialViewController()!
        self.window = window
        window.rootViewController = UINavigationController(rootViewController: inputVC)
        window.makeKeyAndVisible()
    }
}
