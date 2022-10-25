
import UIKit

class DeadViewController: UIViewController {
    
    @IBOutlet weak var deadLabel: UILabel!
    @IBOutlet weak var deadReason: UILabel!
    @IBOutlet weak var returnButton: UIButton!
    
    var storyBrain = StoryBrain()
    var deadText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deadLabel.text = "You are Dead"
        deadLabel.textColor = .systemRed
        deadLabel.font = .italicSystemFont(ofSize: 50)
        deadLabel.textAlignment = .center
        returnButton.layer.cornerRadius = 20
        deadReason.text = storyBrain.dead(userChoice: "d")
    }
    
    @IBAction func returnButton(_ sender: UIButton) {
        performSegue(withIdentifier: "return", sender: self)
    }
    
}
