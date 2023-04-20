
import Foundation

protocol AnotherViewInteractorLogic {
    func fetchHelloWorld()
}

class AnotherViewInteractor: AnotherViewInteractorLogic {
    var presenter: AnotherViewPresenterLogic?
    
    
    func fetchHelloWorld() {
        presenter?.presenterHelloWorld()
    }
}

