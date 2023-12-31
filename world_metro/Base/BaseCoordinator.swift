//
//  BaseCoordinator.swift
//  world_metro
//
//  Created by Eugene Zhigunov on 16.08.2023.
//

import Foundation

class BaseCoordinator {
    
    var childCoordinators: [Coordinatable] = []
    
    // Add only unique object
    
    func addDependency(_ coordinator: Coordinatable) {
        for element in childCoordinators where element === coordinator {
            return
        }
        childCoordinators.append(coordinator)
    }
    
    func removeDependency(_ coordinator: Coordinatable?) {
        guard
            childCoordinators.isEmpty == false,
            let coordinator = coordinator
        else { return }
        
        for (index, element) in childCoordinators.enumerated() where element === coordinator {
            childCoordinators.remove(at: index)
            break
        }
    }
}
