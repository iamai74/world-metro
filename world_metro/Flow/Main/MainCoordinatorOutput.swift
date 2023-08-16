//
//  MainCoordinatorOutput.swift
//  world_metro
//
//  Created by Eugene Zhigunov on 16.08.2023.
//

import Foundation

protocol MainCoordinatorOutput: AnyObject {
    var finishFlow: CompletionBlock? { get set }
}
