
import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
       super.viewDidLoad()
    }
    
    @IBAction func toHome(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
