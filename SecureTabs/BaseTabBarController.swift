import UIKit


class BaseTabBarController: UITabBarController {
    private var loginVCID: String = "LoginViewController"

}

extension BaseTabBarController: UITabBarControllerDelegate {
    
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        guard let controller = viewController as? LoginHandler else {
            return true
        }
        let isValid = controller.validate()
        if !isValid {
            guard let loginVC = self.storyboard?.instantiateViewController(identifier: loginVCID) as? LoginViewController else { fatalError("Login VC not found.") }
                self.present(loginVC, animated: true)
        }
        return isValid
    }
}
