//
//  CoordinatorFactoryProtocol.swift
//  world_metro
//
//  Created by Eugene Zhigunov on 16.08.2023.
//

import UIKit

protocol CoordinatorFactoryProtocol {
    func makeMainCoordinator(router: Routable) -> Coordinatable & MainCoordinatorOutput
}
