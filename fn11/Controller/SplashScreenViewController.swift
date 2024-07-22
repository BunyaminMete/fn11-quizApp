import UIKit

class SplashScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 2 saniyelik bir gecikme sonra ana ViewController'a geçiş yap
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.navigateToMainViewController()
        }
    }
    
    func navigateToMainViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let mainViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
            self.present(mainViewController, animated: true, completion: nil)
        }
    }
}
