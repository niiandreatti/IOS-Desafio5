
import Foundation

protocol AnotherViewPresenterLogic {
    func presenterHelloWorld()
}

class AnotherViewPresenter: AnotherViewPresenterLogic {
    weak var vc: AnotherViewControllerLogic?
    
    func presenterHelloWorld() {
        vc?.displayAnotherInfo()
    }
}
