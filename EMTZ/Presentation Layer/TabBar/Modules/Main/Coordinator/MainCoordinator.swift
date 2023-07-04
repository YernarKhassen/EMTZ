import UIKit

final class MainCoordinator: BaseCoordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let mainController = MainViewController()
        navigationController.pushViewController(mainController, animated: true)
    }
    
}

extension MainCoordinator {
    
}
