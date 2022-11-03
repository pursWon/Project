

import UIKit

class StoryViewController: UIViewController {
    
    class SSViewController: UIViewController {
        
    }

    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 20
    }

    @IBAction func startButton(_ sender: UIButton) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "second") else  { return }
        vc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        self.present(vc, animated: true)
    }
}

extension StoryViewController {
    
    
}
