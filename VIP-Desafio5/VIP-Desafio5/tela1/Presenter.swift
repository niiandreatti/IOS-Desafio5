//
//  Presenter.swift
//  VIP-Desafio5
//
//  Created by Nicolas Santana on 20/04/23.
//

import Foundation

protocol PresenterLogic {
    func presenterHelloWorld()
}

class Presenter: PresenterLogic {
    var vc: ViewControllerLogic?
    
    func presenterHelloWorld() {
        vc?.displayHelloWorld()
    }
}
