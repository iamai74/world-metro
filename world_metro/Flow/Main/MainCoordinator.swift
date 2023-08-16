//
//  MainCoordinator.swift
//  world_metro
//
//  Created by Eugene Zhigunov on 16.08.2023.
//

import UIKit

class MainCoordinator: Coordinator {
    private let navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func start() {
        let vc = UIViewController()
        vc.view.backgroundColor = .magenta
        navigation.setViewControllers([vc], animated: true)
    }
}
