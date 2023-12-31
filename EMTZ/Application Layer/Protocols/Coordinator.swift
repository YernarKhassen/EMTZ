import Foundation

protocol Coordinator: AnyObject {
    func start()
    func coordinate(to coordinate: Coordinator)
    var childCoordinators: [Coordinator] { get set }
}

extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
    func store(coordinator: Coordinator) {
        childCoordinators.append(coordinator)
    }
    func free(coordinator: Coordinator) {
        childCoordinators = childCoordinators.filter { $0 !== coordinator }
    }
}
