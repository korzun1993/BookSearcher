//
//  ApplicationRouter.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class ApplicationRouter {
    
    static let shared = ApplicationRouter()
    var rootWindow: UIWindow!
    
    func startNavigation() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = SearchConfigurator.createSearchView().viewController
        let navigationVC = UINavigationController(rootViewController: rootVC)
        window.rootViewController = navigationVC
        window.makeKeyAndVisible()
        self.rootWindow = window
    }
}
