//
//  LoginCoordinator.swift
//  MVVM-C_With_Clean_Architecture
//
//  Created by Brody Byun on 2023/04/17.
//

import Foundation
import UIKit

protocol LoginCoordinatorDelegate {
    func appStart()
}

class LoginCoordinator: BaseCoordinator {
    
    let loginViewModel = LoginViewModel()
    
    override func start() {
        guard let loginScreen = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController else { return }
        guard let parentNavigationController = self.parentCoordinator?.navigationController else { return }

        loginViewModel.coordinatorDelegate = self
        loginScreen.loginViewModel = loginViewModel
        navigationController.setViewControllers([loginScreen], animated: false)
        navigationController.modalPresentationStyle = .overFullScreen
        parentNavigationController.present(navigationController, animated: true)
        
    }
}

extension LoginCoordinator: LoginCoordinatorDelegate {
    func appStart() {
        // Move To Start App Screen
    }
}
