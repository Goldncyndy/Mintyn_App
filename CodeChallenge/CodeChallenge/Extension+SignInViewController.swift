//
//  Extension+SignInViewController.swift
//  CodeChallenge
//
//  Created by Decagon on 11/03/2022.
//

import Foundation
import UIKit

extension SignInViewController {
  
  func setupSignInScreenConstraint() {
    view.addSubview(emailTextField)
    view.addSubview(passwordTextField)
    view.addSubview(signInButton)
    view.addSubview(emailLabel)
    view.addSubview(passwordLabel)
    view.addSubview(instructionLabel)
    view.addSubview(validationLabel)
    view.addSubview(pvalidationLabel)
    view.addSubview(topBackArrowButton)
    view.addSubview(signInForwardArrowButton)
    view.addSubview(authenticationLabel)
    view.addSubview(createAccountButton)
    view.addSubview(signInVisibilityButton)
    view.addSubview(signInVisibilityNoFocusButton)
    navigationController?.navigationBar.isHidden = true
    
    NSLayoutConstraint.activate([
      instructionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
      instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
      instructionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
      topBackArrowButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
      topBackArrowButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
      validationLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 4),
      validationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      emailLabel.bottomAnchor.constraint(equalTo: emailTextField.topAnchor, constant: -5),
      emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      emailTextField.heightAnchor.constraint(equalToConstant: 52),
      emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      pvalidationLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 4),
      pvalidationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      passwordLabel.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -5),
      passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      signInVisibilityButton.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 17),
      signInVisibilityButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      signInVisibilityNoFocusButton.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 17),
      signInVisibilityNoFocusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
      passwordTextField.heightAnchor.constraint(equalToConstant: 52),
      passwordTextField.heightAnchor.constraint(equalToConstant: 52),
      passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 40),
      passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      signInForwardArrowButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
      signInForwardArrowButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
      signInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
      signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      signInButton.heightAnchor.constraint(equalToConstant: 52),
      authenticationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
      authenticationLabel.bottomAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 25),
      createAccountButton.leadingAnchor.constraint(equalTo: authenticationLabel.trailingAnchor, constant: 4),
      createAccountButton.bottomAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 30)
    ])
  }
}

class LeftPaddedTextField: UITextField {
  override func textRect(forBounds bounds: CGRect) -> CGRect {
    return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
  }
  override func editingRect(forBounds bounds: CGRect) -> CGRect {
    return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
  }
}
