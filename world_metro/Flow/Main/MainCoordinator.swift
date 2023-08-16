//
//  MainCoordinator.swift
//  world_metro
//
//  Created by Eugene Zhigunov on 16.08.2023.
//

import Foundation

final class MainCoordinator: BaseCoordinator, MainCoordinatorOutput {
    
    var finishFlow: CompletionBlock?
    
    fileprivate let factory: MainFactoryProtocol
    fileprivate let router: Routable
    
    init(with factory: MainFactoryProtocol, router: Routable) {
        self.factory = factory
        self.router  = router
    }
}

// MARK: - Coordinatable
extension MainCoordinator: Coordinatable {
    func start() {
        performFlow()
    }
}

// MARK: - Private methods
private extension MainCoordinator {
    func performFlow() {
        let view = factory.makeMapView()
        router.setRootModule(view, hideBar: true)
    }
}
