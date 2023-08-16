//
//  ModulesFactory.swift
//  world_metro
//
//  Created by Eugene Zhigunov on 16.08.2023.
//

import UIKit

final class ModulesFactory {}

extension ModulesFactory: MainFactoryProtocol {
    func makeMapView() -> MapViewProtocol {
        let vc = MapViewController()
        vc.view.backgroundColor = .blue
        return vc
    }
}
