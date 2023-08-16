//
//  AppDelegate.swift
//  world_metro
//
//  Created by Eugene Zhigunov on 15.07.2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    var rootController: UINavigationController {
        window?.rootViewController = UINavigationController()
        window?.makeKeyAndVisible()
        return window?.rootViewController as? UINavigationController ?? UINavigationController()
    }
    fileprivate lazy var coordinator: Coordinatable = self.makeCoordinator()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        coordinator.start()
        return true
    }
}

private extension AppDelegate {
    func makeCoordinator() -> Coordinatable {
        return AppCoordinator(router: Router(rootController: rootController), factory: CoordinatorFactory())
    }
}
