//
//  RouterViewController.swift
//  VIP-Desafio5
//
//  Created by Nicolas Santana on 20/04/23.
//

import Foundation
import UIKit

protocol RoutingDestinationProtocol {
    func navigateTopushedController()
}

final class ViewControllerRouter {
    var viewController: ViewController?
    
    func navigateTopushedController(){
        let vc = AnotherViewController()
        let navegation = UINavigationController(rootViewController: vc)
        navegation.modalTransitionStyle = .crossDissolve
        navegation.modalPresentationStyle = .fullScreen
        self.viewController?.present(navegation, animated: true)
    }
    
}
