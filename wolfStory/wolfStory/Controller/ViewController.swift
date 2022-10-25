

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 20
    }

    @IBAction func startButton(_ sender: UIButton) {
        performSegue(withIdentifier: "SelectViewController", sender: self)
    }
}

