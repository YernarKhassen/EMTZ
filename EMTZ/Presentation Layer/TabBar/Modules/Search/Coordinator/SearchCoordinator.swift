import UIKit

final class SearchCoordinator: BaseCoordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let searchController = SearchViewController()
        navigationController.pushViewController(searchController, animated: true)
    }
    
}

extension SearchCoordinator {
    
}
