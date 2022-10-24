import UIKit

class SelectViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        choice1Button.layer.cornerRadius = 20
        choice2Button.layer.cornerRadius = 20
        updateUI()
    }
    
    @IBAction func choice1Button(_ sender: UIButton) {
        
        storyBrain.nextStory(userSelect: sender.currentTitle!)
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @IBAction func choice2Button(_ sender: UIButton) {
        
        storyBrain.nextStory(userSelect: sender.currentTitle!)
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        storyLabel.text = storyBrain.storyText()
        choice1Button.setTitle(storyBrain.choice1Text(), for: .normal)
        choice2Button.setTitle(storyBrain.choice2Text(), for: .normal)
    }
    


}
