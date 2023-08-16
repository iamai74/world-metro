//
//  AppCoordinator.swift
//  world_metro
//
//  Created by Eugene Zhigunov on 16.08.2023.
//

import Foundation

final class AppCoordinator: BaseCoordinator {
    
    fileprivate let factory: CoordinatorFactoryProtocol
    fileprivate let router: Routable
    
    init(router: Routable, factory: CoordinatorFactory) {
        self.router  = router
        self.factory = factory
    }
}

// MARK: - Coordinatable
extension AppCoordinator: Coordinatable {
    func start() {
        performMainFlow()
    }
}

// MARK: - Private methods
private extension AppCoordinator {
    
    func performMainFlow() {
        let coordinator = factory.makeMainCoordinator(router: router)
        coordinator.finishFlow = { [unowned self, unowned coordinator] in
            self.start()
            self.removeDependency(coordinator)
        }
        addDependency(coordinator)
        coordinator.start()
    }
}
