//
//  MainTabBarController.swift
//  CloneIKEA
//
//  Created by 김수진 on 2022/10/02.
//

import UIKit

class MainTabBarController: UITabBarController {

    let homeViewController: UIViewController = {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .yellow
        viewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), selectedImage: nil)
        return viewController
    }()
    let searchViewController: UIViewController = {
        let viewController = UIViewController()
        viewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "magnifyingglass.circle"), selectedImage: nil)
        return viewController
    }()
    let myPageViewController: UIViewController = {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .orange
        viewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "person"), selectedImage: nil)
        return viewController
    }()
    let wishListViewContoller: UIViewController = {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .green
        viewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "heart.circle"), selectedImage: nil)
        return viewController
    }()
    let shoppingCartViewController: UIViewController = {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .cyan
        viewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "cart"), selectedImage: nil)
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
        setViewControllers([homeViewController,
                           searchViewController,
                           myPageViewController,
                           wishListViewContoller,
                            shoppingCartViewController], animated: true)
    }
    
    func setTabBar() {
        tabBar.backgroundColor = .systemBackground
    }

}
