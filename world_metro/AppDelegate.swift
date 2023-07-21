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

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let startVC = UIViewController()
        startVC.view.backgroundColor = .red
        window?.rootViewController = startVC
        window?.makeKeyAndVisible()
        return true
    }
}

