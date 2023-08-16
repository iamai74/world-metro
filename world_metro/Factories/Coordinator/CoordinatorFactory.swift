//
//  CoordinatorFactory.swift
//  world_metro
//
//  Created by Eugene Zhigunov on 16.08.2023.
//

import UIKit

final class CoordinatorFactory {
    fileprivate let modulesFactory = ModulesFactory()
}

// MARK: - CoordinatorFactoryProtocol
extension CoordinatorFactory: CoordinatorFactoryProtocol {
    
    func makeMainCoordinator(router: Routable) -> Coordinatable & MainCoordinatorOutput {
        return MainCoordinator(with: modulesFactory, router: router)
    }
}
