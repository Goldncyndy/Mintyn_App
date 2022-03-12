//
//  SettingsViewController.swift
//  CodeChallenge
//
//  Created by Decagon on 12/03/2022.
//

import UIKit

class SettingsViewController: UIViewController {
  
  let backButton: UIButton = {
    let button = UIButton()
    button.setBackgroundImage(UIImage(named: "Go-back"), for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    //button.addTarget(self, action: #selector(gobackToHome), for: .touchUpInside)
    return button
  }()
  // MARK: - name of the session
  lazy var settingsNameLabel: UILabel = {
    let label = UILabel()
    label.text = "Settings"
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: "Helvetica", size: 25)
    label.numberOfLines = 1
    return label
  }()
  //  Personal details view
  let personalDetailsView: UIView = {
    let view = UIView()
    let personalDetailsImage: UIImageView = {
      let imageView = UIImageView()
      imageView.image =  UIImage(named: "SmallUser-Icon")
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    let personalDetailsLabel: UILabel = {
      let label = UILabel()
      label.text = "Update Personal Details"
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
    }()
    let personalDetailsButton: UIButton = {
      let button = UIButton()
      button.translatesAutoresizingMaskIntoConstraints = false
      //button.addTarget(self, action: #selector(goToPersonalDetailScreen), for: .touchUpInside)
      return button
    }()
    view.addSubview(personalDetailsImage)
    view.addSubview(personalDetailsLabel)
    view.addSubview(personalDetailsButton)
    view.heightAnchor.constraint(equalToConstant: 48).isActive = true
    personalDetailsImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    personalDetailsImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    personalDetailsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 15).isActive = true
    personalDetailsLabel.leftAnchor.constraint(equalTo: personalDetailsImage.rightAnchor, constant: 20).isActive = true
    personalDetailsButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
    personalDetailsButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  //  logout view
  let logoutButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Logout", for: .normal)
    button.setTitleColor(.black, for: .normal)
    button.heightAnchor.constraint(equalToConstant: 48).isActive = true
    button.titleLabel!.font = UIFont(name: "Helvetica", size: 17)
    button.addTarget(self, action: #selector(logout), for: .touchUpInside)
    return button
  }()
  let logoutImage: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = UIImage(named: "logout-icon")
    return imageView
  }()

    override func viewDidLoad() {
        super.viewDidLoad()
      setupConstraints()
      view.backgroundColor = .systemBackground
    }
  
  @objc func logout() {
//    let actionSheet = UIAlertController(title: "Log Out", message: "Are you sure, you want to log out?", preferredStyle: .actionSheet)
//        actionSheet.addAction(UIAlertAction(title: "Cancel",
//                                            style: .cancel, handler: nil))
//
//
//        actionSheet.addAction(UIAlertAction(title: "Log Out", style: .destructive,
//                                            handler: { [weak self] _ in
//
//                                                guard let strongSelf = self else {
//                                                    return
//                                                }
//
//                                                let firebaseAuth = Auth.auth()
//                                                do {
//                                                    try firebaseAuth.signOut()
//                                                } catch let signOutError as NSError {
//                                                    print ("Error signing out: %@", signOutError)
//                                                }
//                                                **remove object on logout click**
//                                                USER_DEFAULT.removeObject(forKey: "email") // remove email
//
//                                                    let vc = LoginViewController()
//                                                    let nav = UINavigationController(rootViewController: vc)
//                                                    nav.modalPresentationStyle = .fullScreen
//                                                    strongSelf.present(nav, animated: true)
//
//
//                                            }))
//        present(actionSheet, animated: true)
  }
  
  func setupConstraints() {
    view.addSubview(backButton)
    view.addSubview(settingsNameLabel)
    view.addSubview(personalDetailsView)
    view.addSubview(logoutButton)
    view.addSubview(logoutImage)
    
  let logoutStack = UIStackView(arrangedSubviews: [logoutImage, logoutButton])
  logoutStack.distribution = .equalSpacing
  logoutStack.spacing = 20
  logoutStack.axis = .horizontal
  logoutStack.translatesAutoresizingMaskIntoConstraints = false
  view.addSubview(logoutStack)
    
  self.navigationItem.setHidesBackButton(true, animated: true)
    
  NSLayoutConstraint.activate([
    backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
    backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
    backButton.heightAnchor.constraint(equalToConstant: 28),
    backButton.widthAnchor.constraint(equalToConstant: 28),
    //      settings Name Label constraints
    settingsNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 75),
    settingsNameLabel.leadingAnchor.constraint(equalTo: backButton.leadingAnchor, constant: 140),
    //      personal Details View constraints
    personalDetailsView.topAnchor.constraint(equalTo: settingsNameLabel.bottomAnchor, constant: 30),
    personalDetailsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
    personalDetailsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
    //      logoutStack view constraints
    logoutStack.topAnchor.constraint(equalTo: personalDetailsView.bottomAnchor, constant: 30),
    logoutStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)
  ])
  }
}

