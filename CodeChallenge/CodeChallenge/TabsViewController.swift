//
//  TabsViewController.swift
//  CodeChallenge
//
//  Created by Decagon on 12/03/2022.
//

import UIKit

class TabsViewController: UITabBarController {

  override func viewDidLoad() {
      super.viewDidLoad()
// MARK: Create instance of viewControllers
    navigationController?.isNavigationBarHidden = true
      let homeViewController = HomeViewController()
      let settingsViewController = SettingsViewController()
// MARK: Assign viewController to tab Bar
    self.setViewControllers([homeViewController, settingsViewController], animated: false)
    guard let items = self.tabBar.items else { return }
    let images = ["paperplane.fill", "star.fill"]
    for item in 0...1 {
      items[item].image = UIImage(systemName: images[item])
    }
// MARK: Changing tint Color
    self.tabBar.tintColor = .gray
  }
  
}
