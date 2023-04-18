//
//  SplashViewController.swift
//  MVVM-C_With_Clean_Architecture
//
//  Created by Brody Byun on 2023/04/18.
//

import UIKit

class SplashViewController: BaseViewController {
    
    var coordinatorDelegate: AppCoordinatorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        coordinatorDelegate?.login()
    }
    
}
