//
//  Coordinator.swift
//  responsive-tableview
//
//  Created by Connor Przybyla on 5/3/22.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator]? { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
