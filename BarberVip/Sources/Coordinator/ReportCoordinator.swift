//
//  ReportCoordinator.swift
//  BarberVip
//
//  Created by Leonardo Portes on 17/02/22.
//

import Foundation

final class ReportCoordinator: BaseCoordinator {
    override func start() {
        let controller = ReportViewController(coordinator: self)
        controller.popAction = popAction
        configuration.viewController = controller
        configuration.navigationController?.navigationBar.isHidden = true
        configuration.navigationController?.pushViewController(controller, animated: true)
    }
    
    private func popAction() {
        configuration.navigationController?.popViewController(animated: true)
    }
}
