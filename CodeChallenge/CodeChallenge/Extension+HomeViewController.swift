//
//  ExtensionHomeVC.swift
//  CodeChallenge
//
//  Created by Decagon on 12/03/2022.
//

import UIKit

extension HomeViewController {
  
  // MARK: - FUNCTION TO SETUP VIEWS ON SCREEN
  func setupViewsConstraint() {
    view.addSubview(instructionLabel)
    userCardView.addSubview(userImageView)
    view.addSubview(userCardView)
    view.addSubview(cardView)
    cardView.addSubview(walletLabel)
    cardView.addSubview(balanceLabel)
    view.addSubview(optionLabel)
    view.addSubview(optionImageView1)
    view.addSubview(optionImageView2)
    view.addSubview(optionImageView3)
    view.addSubview(optionImageView4)
    view.addSubview(optionImageView5)
    view.addSubview(optionImageView6)
    view.addSubview(containerView1)
    view.addSubview(containerView2)
    view.addSubview(containerView3)
    view.addSubview(containerView4)
    view.addSubview(containerView5)
    view.addSubview(containerView6)
    navigationController?.navigationBar.isHidden = true
    
    NSLayoutConstraint.activate([
      instructionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
      instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      // MARK: - USER PROFILE IMAGE CONSTRAINT
      userCardView.topAnchor.constraint(equalTo:  view.safeAreaLayoutGuide.topAnchor, constant: 30),
      userCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      userCardView.widthAnchor.constraint(equalToConstant: 65),
      userCardView.heightAnchor.constraint(equalToConstant: 65),
      // MARK: IMAGE CONSTRAINT
      userImageView.topAnchor.constraint(equalTo: userCardView.topAnchor, constant: 5),
      userImageView.leadingAnchor.constraint(equalTo: userCardView.leadingAnchor, constant: 2),
      userImageView.trailingAnchor.constraint(equalTo: userCardView.trailingAnchor, constant: -2),
      userImageView.widthAnchor.constraint(equalToConstant: 65),
      userImageView.heightAnchor.constraint(equalToConstant: 65),
      // MARK: - VIEW CONSTRAINTS
      cardView.topAnchor.constraint(equalTo: userImageView.bottomAnchor, constant: 30),
      cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      cardView.heightAnchor.constraint(equalToConstant: 170),
      //MARK: - WALLET LABEL CONSTRAINTS
      walletLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 40),
      walletLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
      //MARK: - BALANCE LABEL CONSTRAINTS
      balanceLabel.topAnchor.constraint(equalTo: walletLabel.bottomAnchor, constant: 5),
      balanceLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
      // MARK: - OPTION LABEL CONSTRAINTS
      optionLabel.topAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 30),
      optionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      // MARK: - CONTAINER VIEW 1
      containerView1.topAnchor.constraint(equalTo: optionLabel.bottomAnchor, constant: 20),
      containerView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      containerView1.widthAnchor.constraint(equalToConstant: 170),
      containerView1.heightAnchor.constraint(equalToConstant: 100),
      // MARK: - MEAL OPTION VIEW 1 CONTRAINTS
      optionImageView1.topAnchor.constraint(equalTo: containerView1.topAnchor, constant: 5),
      optionImageView1.leadingAnchor.constraint(equalTo: containerView1.leadingAnchor, constant: 2),
      optionImageView1.trailingAnchor.constraint(equalTo: containerView1.trailingAnchor, constant: -2),
      optionImageView1.widthAnchor.constraint(equalToConstant: 170),
      optionImageView1.heightAnchor.constraint(equalToConstant: 100),
      // MARK: - CONTAINER VIEW 2
      containerView2.topAnchor.constraint(equalTo: optionLabel.bottomAnchor, constant: 20),
      containerView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      containerView2.widthAnchor.constraint(equalToConstant: 170),
      containerView2.heightAnchor.constraint(equalToConstant: 100),
      // MARK: - MEAL OPTION VIEW 2 CONTRAINTS
      optionImageView2.topAnchor.constraint(equalTo: containerView2.topAnchor, constant: 5),
      optionImageView2.leadingAnchor.constraint(equalTo:containerView2.leadingAnchor, constant: 2),
      optionImageView2.trailingAnchor.constraint(equalTo: containerView2.trailingAnchor, constant: -2),
      optionImageView2.widthAnchor.constraint(equalToConstant: 170),
      optionImageView2.heightAnchor.constraint(equalToConstant: 100),
      // MARK: - CONTAINER VIEW 3
      containerView3.topAnchor.constraint(equalTo: containerView2.bottomAnchor, constant: 20),
      containerView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      containerView3.widthAnchor.constraint(equalToConstant: 170),
      containerView3.heightAnchor.constraint(equalToConstant: 100),
      // MARK: - MEAL OPTION VIEW 3 CONTRAINTS
      optionImageView3.topAnchor.constraint(equalTo: containerView3.topAnchor, constant: 5),
      optionImageView3.leadingAnchor.constraint(equalTo: containerView3.leadingAnchor, constant: 2),
      optionImageView3.trailingAnchor.constraint(equalTo: containerView3.trailingAnchor, constant: -2),
      optionImageView3.widthAnchor.constraint(equalToConstant: 170),
      optionImageView3.heightAnchor.constraint(equalToConstant: 100),
      // MARK: - CONTAINER VIEW 4
      containerView4.topAnchor.constraint(equalTo: containerView2.bottomAnchor, constant: 20),
      containerView4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      containerView4.widthAnchor.constraint(equalToConstant: 170),
      containerView4.heightAnchor.constraint(equalToConstant: 100),
      // MARK: - MEAL OPTION VIEW 4 CONTRAINTS
      optionImageView4.topAnchor.constraint(equalTo: containerView4.topAnchor, constant: 5),
      optionImageView4.leadingAnchor.constraint(equalTo: containerView4.leadingAnchor, constant: 2),
      optionImageView4.trailingAnchor.constraint(equalTo: containerView4.trailingAnchor, constant: -2),
      optionImageView4.widthAnchor.constraint(equalToConstant: 170),
      optionImageView4.heightAnchor.constraint(equalToConstant: 100),
      // MARK: - CONTAINER VIEW 5
      containerView5.topAnchor.constraint(equalTo: containerView3.bottomAnchor, constant: 20),
      containerView5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      containerView5.widthAnchor.constraint(equalToConstant: 170),
      containerView5.heightAnchor.constraint(equalToConstant: 100),
       // MARK: - MEAL OPTION VIEW 5 CONTRAINTS
      optionImageView5.topAnchor.constraint(equalTo: containerView5.topAnchor, constant: 5),
      optionImageView5.leadingAnchor.constraint(equalTo: containerView3.leadingAnchor, constant: 2),
      optionImageView5.trailingAnchor.constraint(equalTo: containerView2.trailingAnchor, constant: -2),
      optionImageView5.widthAnchor.constraint(equalToConstant: 170),
      optionImageView5.heightAnchor.constraint(equalToConstant: 100),
      // MARK: - CONTAINER VIEW 6
      containerView6.topAnchor.constraint(equalTo: containerView3.bottomAnchor, constant: 20),
      containerView6.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      containerView6.widthAnchor.constraint(equalToConstant: 170),
      containerView6.heightAnchor.constraint(equalToConstant: 100),
      // MARK: - MEAL OPTION VIEW 6 CONTRAINTS
      optionImageView6.topAnchor.constraint(equalTo: containerView6.topAnchor, constant: 5),
      optionImageView6.leadingAnchor.constraint(equalTo: containerView6.leadingAnchor, constant: 2),
      optionImageView6.trailingAnchor.constraint(equalTo: containerView6.trailingAnchor, constant: -2),
      optionImageView6.widthAnchor.constraint(equalToConstant: 170),
      optionImageView6.heightAnchor.constraint(equalToConstant: 100)
      ])
  }
  
}
