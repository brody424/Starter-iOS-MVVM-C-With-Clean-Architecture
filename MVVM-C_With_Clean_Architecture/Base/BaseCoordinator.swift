//
//  BaseCoordinator.swift
//  MVVM-C_With_Clean_Architecture
//
//  Created by Brody Byun on 2023/04/18.
//

import Foundation

class BaseCoordinator: BaseCoordinatorProtocol {
    var childCoordinators: [BaseCoordinatorProtocol] = []
    var parentCoordinator: BaseCoordinatorProtocol?
    var navigationController = BaseNavigationController()
    
    func start() {
        fatalError("Start method must be implemented")
    }
    
    func start(coordinator: BaseCoordinatorProtocol) {
        self.childCoordinators.append(coordinator)
        coordinator.parentCoordinator = self
        coordinator.start()
    }
    
    func didFinish(coordinator: BaseCoordinatorProtocol) {
        if let index = self.childCoordinators.firstIndex(where: { $0 === coordinator }) {
            self.childCoordinators.remove(at: index)
        }
    }
}
