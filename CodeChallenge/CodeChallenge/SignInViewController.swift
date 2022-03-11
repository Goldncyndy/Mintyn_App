//
//  ViewController.swift
//  CodeChallenge
//
//  Created by Decagon on 11/03/2022.
//

import UIKit

class SignInViewController: UIViewController {

  let instructionLabel: UILabel = {
    let label = UILabel()
    label.text = "Please enter your \n Login detail"
    label.numberOfLines = 2
    label.font = UIFont(name: "Helvetica", size: 20)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let emailLabel: UILabel = {
    let label = UILabel()
    label.text = "Email"
    label.font = UIFont(name: "Helvetica", size: 12)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let passwordLabel: UILabel = {
      let label = UILabel()
      label.text = "Password"
      label.font = UIFont(name: "Helvetica", size: 12)
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
  }()
  let validationLabel: UILabel = {
    let label = UILabel()
    label.text = ""
    label.textColor = .black
    label.font = UIFont(name: "Helvetica", size: 13)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let pvalidationLabel: UILabel = {
      let label = UILabel()
      label.text = ""
      label.textColor = .black
      label.font = UIFont(name: "Helvetica", size: 13)
      label.translatesAutoresizingMaskIntoConstraints = false
      return label
  }()
  let emailTextField: LeftPaddedTextField = {
    let textField = LeftPaddedTextField()
    textField.layer.borderColor = UIColor.black.cgColor
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.backgroundColor = .white
    textField.layer.borderWidth = 1
    textField.layer.borderColor =  UIColor.black.cgColor
    textField.keyboardType = .emailAddress
    textField.layer.cornerRadius = 24
    textField.autocapitalizationType = .none
    textField.placeholder = "johnsmith@gmail.com"
    textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged )
    return textField
  }()
  let passwordTextField: LeftPaddedTextField = {
      let textField = LeftPaddedTextField()
      textField.layer.borderColor = UIColor.black.cgColor
      textField.translatesAutoresizingMaskIntoConstraints = false
      textField.placeholder = "johnsmith1#"
      textField.backgroundColor = .white
      textField.layer.borderWidth = 1
      textField.isSecureTextEntry = true
      textField.autocapitalizationType = .none
      textField.layer.cornerRadius = 24
      return textField
  }()
  let signInVisibilityButton: UIButton = {
      let button = UIButton()
      button.addTarget(self, action: #selector(didTapPasswordVisibilityButton), for: .touchUpInside)
      button.translatesAutoresizingMaskIntoConstraints = false
      button.setBackgroundImage(UIImage(named: "Focus Icon Open"), for: .normal)
      return button
  }()
  let signInVisibilityNoFocusButton: UIButton = {
      let button = UIButton()
      button.addTarget(self, action: #selector(didTapVisibilityNoFocusButton), for: .touchUpInside)
      button.translatesAutoresizingMaskIntoConstraints = false
      button.setBackgroundImage(UIImage(named: "Focus Icon Closed"), for: .normal)
      button.isHidden = true
      return button
  }()
  let signInButton: UIButton = {
    let button = UIButton(type: .system)
    button.addTarget(self, action: #selector(didTapSignInButton), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Sign In", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.layer.cornerRadius = 24
    button.backgroundColor = .orange
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 17)
    button.isEnabled = true
    return button
  }()
  let authenticationLabel: UILabel = {
    let label = UILabel()
    label.text = "Don't have an accout?"
    label.numberOfLines = 2
    label.font = UIFont(name: "Helvetica", size: 12)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let createAccountButton: UIButton = {
    let button = UIButton(type: .system)
    button.addTarget(self, action: #selector(didTapSignUpButton), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Sign Up", for: .normal)
    button.setTitleColor(.orange, for: .normal)
    button.backgroundColor = .white
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 12)
    button.isEnabled = true
    return button
  }()
  let topBackArrowButton: UIButton = {
    let button = UIButton()
    button.addTarget(self, action: #selector(didTapOnboardingButton), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setBackgroundImage(UIImage(named: "Go-back"), for: .normal)
    return button
  }()
  let signInForwardArrowButton: UIButton = {
    let button = UIButton()
    button.addTarget(self, action: #selector(didTapSignInButton), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setBackgroundImage(UIImage(named: "Go Forward Icon"), for: .normal)
    return button
  }()
  func validateEmail() {
    let text = emailTextField.text
    let emailRegEx  = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let textTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
    let emailResult = textTest.evaluate(with: text)
    if emailResult {
      validationLabel.text = "correct email"
      validationLabel.textColor = .green
      emailTextField.layer.borderColor = UIColor.green.cgColor
      signInButton.backgroundColor = .black
      signInButton.isEnabled =  true
    } else if text?.isEmpty == true {
      validationLabel.isHidden = true
      emailTextField.layer.borderColor = UIColor.black.cgColor
      signInButton.backgroundColor = .gray
      signInButton.isEnabled =  false
    } else {
      validationLabel.text = "Please enter a valid email"
      emailTextField.layer.borderColor = UIColor.red.cgColor
      validationLabel.textColor = .red
      validationLabel.isHidden = false
      signInButton.backgroundColor = .gray
      signInButton.isEnabled =  false
    }
  }
  @objc func textFieldDidChange(_ textField: UITextField) {
    validateEmail()
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    setupSignInScreenConstraint()
    //self.hideKeyboardWhenTappedAround()
  }
  // MARK: - ... Function to segue to the password screen
  @objc func didTapSignInButton() {
    if emailTextField.text == "" {
      emailTextField.layer.borderColor = UIColor.red.cgColor
      validationLabel.textColor = .red
      validationLabel.text = "Please enter a valid email"
    } else {
      let newController = HomeViewController()
      navigationController?.pushViewController(newController, animated: true)
    }
    if passwordTextField.text == "" {
        pvalidationLabel.text = "Incorrect password"
        pvalidationLabel.textColor = .red
        passwordTextField.layer.borderColor = UIColor.red.cgColor
    } else {
        signInButton.isEnabled = true
      navigationController?.pushViewController(HomeViewController(), animated: true)
    }
  }
  @objc func didTapSignUpButton() {
    let newController = HomeViewController()
    navigationController?.pushViewController(newController, animated: true)
  }
  @objc func didTapPasswordVisibilityButton() {
      passwordTextField.isSecureTextEntry = false
      signInVisibilityNoFocusButton.isHidden = false
  }
  @objc func didTapVisibilityNoFocusButton() {
      passwordTextField.isSecureTextEntry = true
      signInVisibilityNoFocusButton.isHidden = true
      signInVisibilityButton.isHidden = false
  }
  @objc func didTapOnboardingButton() {
    
  }
}

