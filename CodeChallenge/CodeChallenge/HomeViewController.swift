//
//  HomeViewController.swift
//  CodeChallenge
//
//  Created by Decagon on 11/03/2022.
//

import UIKit

class HomeViewController: UIViewController {
  
  let instructionLabel: UILabel = {
    let label = UILabel()
    label.text = " Welcome \n home, Smith!"
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 35)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  // MARK: - IMAGE VIEW
  lazy var userImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "profile2")
    imageView.contentMode = .scaleAspectFit
    imageView.layer.cornerRadius = 30.0
    imageView.clipsToBounds = true
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  // MARK: - CARD VIEW
  let cardView: UIView = {
    let view = UIView()
    view.backgroundColor = .orange
    view.layer.cornerRadius = 15
    view.isUserInteractionEnabled = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let walletLabel: UILabel = {
    let label = UILabel()
    label.text = " WALLET BALANCE"
    label.textColor = .white
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 14)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let balanceLabel: UILabel = {
    let label = UILabel()
    label.text = " N503,700.00"
    label.textColor = .white
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica", size: 40)
    label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
    label.textAlignment = .left
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let optionLabel: UILabel = {
    let label = UILabel()
    label.text = "Make your choice"
    label.numberOfLines = 2
    label.font = UIFont(name: "Helvetica", size: 16)
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  // MARK: - IMAGE CONTAINER VIEW
 let containerView1: UIView = {
  let container = UIView()
   container.layer.cornerRadius = 15
   container.layer.masksToBounds = true
   container.isUserInteractionEnabled = true
   container.translatesAutoresizingMaskIntoConstraints = false
   return container
  }()
  
  // MARK: - IMAGE LABEL
  lazy var optionImageView1: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "fried-rice")
    imageView.layer.cornerRadius = 15.0
    imageView.clipsToBounds = true
    imageView.frame = containerView1.bounds
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  // MARK: - IMAGE CONTAINER VIEW
  let containerView2: UIView = {
  let container = UIView()
   container.layer.cornerRadius = 15
   container.layer.masksToBounds = true
   container.isUserInteractionEnabled = true
   container.translatesAutoresizingMaskIntoConstraints = false
   return container
  }()
  
  // MARK: - IMAGE LABEL
  lazy var optionImageView2: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "egusi_soup")
    imageView.layer.cornerRadius = 25.0
    imageView.clipsToBounds = true
    imageView.frame = containerView2.bounds
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  // MARK: - IMAGE CONTAINER VIEW
  let containerView3: UIView = {
  let container = UIView()
   container.layer.cornerRadius = 15
   container.layer.masksToBounds = true
   container.isUserInteractionEnabled = true
   container.translatesAutoresizingMaskIntoConstraints = false
   return container
  }()
  
  // MARK: - IMAGE LABEL
  lazy var optionImageView3: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "Coconut Jollof rice")
    imageView.layer.cornerRadius = 25.0
    imageView.clipsToBounds = true
    imageView.frame = containerView3.bounds
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  // MARK: - IMAGE CONTAINER VIEW
  let containerView4: UIView = {
  let container = UIView()
   container.layer.cornerRadius = 15
   container.layer.masksToBounds = true
   container.isUserInteractionEnabled = true
   container.translatesAutoresizingMaskIntoConstraints = false
   return container
  }()
  
  // MARK: - IMAGE LABEL
  lazy var optionImageView4: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "okra2")
    imageView.layer.cornerRadius = 25.0
    imageView.clipsToBounds = true
    imageView.frame = containerView4.bounds
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  // MARK: - IMAGE CONTAINER VIEW
  let containerView5: UIView = {
  let container = UIView()
   container.layer.cornerRadius = 15
   container.layer.masksToBounds = true
   container.isUserInteractionEnabled = true
   container.translatesAutoresizingMaskIntoConstraints = false
   return container
  }()
  
  lazy var optionImageView5: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "okra2")
    imageView.layer.cornerRadius = 25.0
    imageView.clipsToBounds = true
    imageView.frame = containerView5.bounds
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  // MARK: - IMAGE CONTAINER VIEW
  let containerView6: UIView = {
  let container = UIView()
   container.layer.cornerRadius = 15
   container.layer.masksToBounds = true
   container.isUserInteractionEnabled = true
   container.translatesAutoresizingMaskIntoConstraints = false
   return container
  }()
  // MARK: - IMAGE LABEL
  lazy var optionImageView6: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "okro-soup")
    imageView.layer.cornerRadius = 25.0
    imageView.clipsToBounds = true
    imageView.frame = containerView6.bounds
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

    override func viewDidLoad() {
        super.viewDidLoad()
      setupViewsConstraint()
      view.backgroundColor = .systemBackground
    }
}
