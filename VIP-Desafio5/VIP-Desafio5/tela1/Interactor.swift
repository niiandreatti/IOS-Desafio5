

import Foundation

protocol InteractorLogic {
    func fetchHelloWorld()
}

class Interactor: InteractorLogic {
    var presenter: PresenterLogic?
    
    func fetchHelloWorld() {
        presenter?.presenterHelloWorld()
    }
}

