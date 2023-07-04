import UIKit

final class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    //MARK: - Properties
    var coordinatorDelegate: TabBarCoordinator?
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarAppearance()
    }
    
    //MARK: - Methods
    private func setTabBarAppearance() {
        tabBar.backgroundColor = .white
        view.backgroundColor = .white
    }
}
