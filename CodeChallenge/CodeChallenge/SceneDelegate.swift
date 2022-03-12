//
//  SceneDelegate.swift
//  CodeChallenge
//
//  Created by Decagon on 11/03/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
      
      guard let windowScene = (scene as? UIWindowScene) else { return }
      
      let rootViewCOntroller = SignInViewController()
      let navigationController = UINavigationController(rootViewController: rootViewCOntroller)
      
      window = UIWindow(frame: windowScene.coordinateSpace.bounds)
      window?.windowScene = windowScene
      window?.rootViewController = navigationController
      window?.makeKeyAndVisible()
  }


}

