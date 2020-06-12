//
//  AppDelegate.swift
//  DZ_CollectionView
//
//  Created by Roman Berezin on 11.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = NavController(rootViewController: CollectionController())
        window?.makeKeyAndVisible()
        return true
    }
}

