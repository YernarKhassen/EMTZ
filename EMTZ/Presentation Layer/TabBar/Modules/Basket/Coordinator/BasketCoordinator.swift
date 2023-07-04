import UIKit

final class BasketCoordinator: BaseCoordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let basketController = BasketViewController()
        navigationController.pushViewController(basketController, animated: true)
    }
    
}

extension BasketCoordinator {
    
}
