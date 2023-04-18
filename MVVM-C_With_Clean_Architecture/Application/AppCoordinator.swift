//
//  AppCoordinator.swift
//  MVVM-C_With_Clean_Architecture
//
//  Created by Brody Byun on 2023/04/17.
//

import Foundation
import UIKit

protocol AppCoordinatorDelegate {
    func login()
}

class AppCoordinator: BaseCoordinator {
    var window: UIWindow?
    
    func start(windowScene: UIWindowScene) {
        window = UIWindow(windowScene: windowScene)
        guard let window = window else { return }

        guard let splashScreen = UIStoryboard(name: "Splash", bundle: nil).instantiateViewController(withIdentifier: "SplashViewController") as? SplashViewController else { return }
        
        self.navigationController.setViewControllers([splashScreen], animated: false)
        splashScreen.coordinatorDelegate = self
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
}

extension AppCoordinator: AppCoordinatorDelegate {
    func login() {
        let loginCoordinator = LoginCoordinator()
        self.start(coordinator: loginCoordinator)
    }
}
