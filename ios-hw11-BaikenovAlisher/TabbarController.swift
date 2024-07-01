//
//  TabbarController.swift
//  ios-hw11-BaikenovAlisher
//
//  Created by Islam Temirbek on 22.06.2024.
//

import UIKit

class TabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let firstTabbarItem = UITabBarItem(title: "Главная",
                                      image: UIImage(systemName: "pencil.tip.crop.circle"),
                                      selectedImage: UIImage(systemName: "pencil.tip.crop.circle.fill"))
        let firstController = ViewController()
        firstController.tabBarItem = firstTabbarItem
        
        let secondTabbarItem = UITabBarItem(title: "Профиль",
                                      image: UIImage(systemName: "person.crop.circle"),
                                      selectedImage: UIImage(systemName: "person.crop.circle.fill"))
        let secondController = SecondController()
        secondController.tabBarItem = secondTabbarItem
        
        self.viewControllers = [firstController, secondController]
        
        self.tabBar.isTranslucent = false
    }
}
