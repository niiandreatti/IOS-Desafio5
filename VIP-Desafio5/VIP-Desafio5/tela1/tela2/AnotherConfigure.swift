//
//  ConfiguratorAnother.swift
//  VIP-Swift-Structure
//
//  Created by Luccas Santana Marinho on 08/07/22.
//

import Foundation
import UIKit

struct ConfiguratorAnother {
    static func config() -> UIViewController {
        let presenter = AnotherViewPresenter()
        let interactor = AnotherViewInteractor()
        let router = AnotherControllerRouter()
        let view = AnotherViewController()
        
        view.interactor = interactor
        view.router = router
        interactor.presenter = presenter
        presenter.vc = view
        router.anotherviewController = view
        
        return view
    }
}
