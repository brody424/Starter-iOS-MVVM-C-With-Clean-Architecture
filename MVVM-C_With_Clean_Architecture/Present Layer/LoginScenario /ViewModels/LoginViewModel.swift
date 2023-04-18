//
//  LoginViewModel.swift
//  MVVM-C_With_Clean_Architecture
//
//  Created by Brody Byun on 2023/04/18.
//

import Foundation

class LoginViewModel {
    var coordinatorDelegate: LoginCoordinatorDelegate?
    
    
    func loginSuccess() {
        coordinatorDelegate?.appStart()
    }
}
