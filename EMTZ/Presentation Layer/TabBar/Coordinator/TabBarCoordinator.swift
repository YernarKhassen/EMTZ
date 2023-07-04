import UIKit

class TabBarCoordinator: BaseCoordinator {
    private let navigationController: UINavigationController
    
    private let mainVC = UINavigationController()
    private let searchVC = UINavigationController()
    private let basketVC = UINavigationController()
    private let profileVC = UINavigationController()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let tabBar = makeTabBar()
        navigationController.present(tabBar, animated: true)
    }
    
    private func makeTabBar() -> UITabBarController {
        let tabBar = TabBarController()
        tabBar.modalTransitionStyle = .crossDissolve
        tabBar.modalPresentationStyle = .fullScreen
        tabBar.coordinatorDelegate = self
        
        mainVC.tabBarItem = UITabBarItem(title: "Главная", image: UIImage(named: "main"), tag: 0)
        searchVC.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(named: "search"), tag: 1)
        basketVC.tabBarItem = UITabBarItem(title: "Корзина", image: UIImage(named: "basket"), tag: 2)
        profileVC.tabBarItem = UITabBarItem(title: "Аккаунт", image: UIImage(named: "profile"), tag: 3)
        
        tabBar.viewControllers = [mainVC, searchVC, basketVC, profileVC]
        
        let mainCoordinator = MainCoordinator(navigationController: mainVC)
        let searchCoordinator = SearchCoordinator(navigationController: searchVC)
        let basketCoordinator = BasketCoordinator(navigationController: basketVC)
        let profileCoordinator = ProfileCoordinator(navigationController: profileVC)
        
        [mainCoordinator, searchCoordinator, basketCoordinator, profileCoordinator].forEach {
            coordinate(to: $0)
        }
        
        return tabBar
    }
}
