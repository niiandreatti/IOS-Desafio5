
import UIKit

protocol  AnotherViewControllerLogic: AnyObject {
    func displayAnotherInfo()
}

class AnotherViewController: UIViewController, AnotherViewControllerLogic , UICollectionViewDataSource, UICollectionViewDelegate {
   
    //MARK: life cycle

    override func viewDidLoad() {
           super.viewDidLoad()
        self.view.backgroundColor = .white
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        setupConstraints()
    }
    
    //MARK: Helpers

    func insertViews() {
        view.addSubview(collectionView)
        displayAnotherInfo()
        interactor?.fetchHelloWorld()
    }
    
    func setupConstraints() {
        insertViews()
        
        let collectionView = [
        collectionView.topAnchor.constraint(equalTo: view.topAnchor),
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ]
    
        NSLayoutConstraint.activate(collectionView)
    }
    
    //MARK: Properties
    
    var interactor: AnotherViewInteractor?
    var router: AnotherControllerRouter!
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 100, height: 100)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
    
        return collectionView
    }()
        
    func displayAnotherInfo() {
        print("voce esta na AnotherViewController")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 8
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .blue
            
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
            cell.addGestureRecognizer(tapGesture)
        
            return cell
        }
        
        //MARK: objc
        
        @objc func handleTap(sender: UITapGestureRecognizer) {
            //Obter o número de células na coleção
            let numberOfCells = collectionView.numberOfItems(inSection: 0)
            print("A quantidade de células é: \(numberOfCells)")
        }
        
    
}

