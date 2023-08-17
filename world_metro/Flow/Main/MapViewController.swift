//
//  MapViewController.swift
//  world_metro
//
//  Created by Eugene Zhigunov on 16.08.2023.
//

import UIKit
import MapKit

final class MapViewController: UIViewController {
    private lazy var mapView: MKMapView = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addMapView()
    }
    private func addMapView() {
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        mapView.centerToLocation(initialLocation)
        view.addSubview(mapView)
        mapView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mapView.leftAnchor.constraint(equalTo: view.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
}

extension MapViewController: MapViewProtocol {
    
}
