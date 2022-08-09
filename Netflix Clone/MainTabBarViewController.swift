//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Aristide LAUGA on 09/08/2022.
//

import UIKit

class MainTabBarViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemYellow
  }

  let vc1 = UINavigationController(rootViewController: HomeViewController())
  let vc2 = UINavigationController(rootViewController: UpcomingViewController())
  let vc3 = UINavigationController(rootViewController: SearchViewController())
  let vc4 = UINavigationController(rootViewController: DownloadsViewController())
}

