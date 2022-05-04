//
//  MainCoordinator.swift
//  responsive-tableview
//
//  Created by Connor Przybyla on 5/3/22.
//

import UIKit

final class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator]?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewModel = ListViewModel(names: firstNames)
        let vc = HomeVC(viewModel: viewModel)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}
