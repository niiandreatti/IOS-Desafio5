import Foundation
import UIKit

class ConfiguratorViewController {
    static func config() -> ViewController {
        let view = ViewController()
        let presenter = Presenter()
        let interactor = Interactor()
        let router = ViewControllerRouter()
        
        view.interactor = interactor
        view.router = router
        interactor.presenter = presenter
        presenter.vc = view
        router.viewController = view
        
        return view
    }
}
