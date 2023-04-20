
import UIKit

protocol ViewControllerLogic: AnyObject {
    func displayHelloWorld()
}

class ViewController: UIViewController, ViewControllerLogic {
    var interactor: InteractorLogic?
    var router: ViewControllerRouter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        insertViews()
    }
    
    // MARK: Setup display
    
    func displayHelloWorld() {
        print("Você está na ViewController")
    }
    
    let myButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Clique aqui", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    func insertViews() {
        view.addSubview(myButton)
        
        interactor?.fetchHelloWorld()
        setupConstraints()
    }
    
    func setupConstraints() {
        let constraints = [
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            myButton.widthAnchor.constraint(equalToConstant: 120),
            myButton.heightAnchor.constraint(equalToConstant: 44),
        ]
        NSLayoutConstraint.activate(constraints)
        myButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        router?.navigateTopushedController()
    }

}

