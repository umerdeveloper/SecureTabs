import UIKit

protocol LoginHandler: class {
    func validate() -> Bool
}

extension LoginHandler where Self: UIViewController {
    func validate() -> Bool {
        return false
    }
}
