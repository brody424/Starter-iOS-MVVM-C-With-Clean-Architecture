//
//  BaseCoordinatorProtocol.swift
//  MVVM-C_With_Clean_Architecture
//
//  Created by Brody Byun on 2023/04/18.
//

import Foundation

protocol BaseCoordinatorProtocol: AnyObject {
    var navigationController: BaseNavigationController { get set }
    var parentCoordinator: BaseCoordinatorProtocol? { get set }
    
    func start()
    func start(coordinator: BaseCoordinatorProtocol)
    func didFinish(coordinator: BaseCoordinatorProtocol)
}
