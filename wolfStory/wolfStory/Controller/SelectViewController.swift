import UIKit

class SelectViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    var dead = DeadViewController()
    var storyNumber: Int = 0
    
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        choice1Button.layer.cornerRadius = 20
        choice2Button.layer.cornerRadius = 20
        updateUI()
    }
    
    @IBAction func choiceButton(_ sender: UIButton) {
        storyBrain.nextStory(userSelect: sender.currentTitle!)
        storyBrain.dead(userChoice: sender.currentTitle!)
        
        if sender.currentTitle == storyBrain.wolfStoryList[0].choice2 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[2].choice1 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[5].choice1 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[8].choice1 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[8].choice2 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[10].choice2 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[14].choice2 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[15].choice2 {
            performSegue(withIdentifier: "dead", sender: self)
        }
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        storyLabel.text = storyBrain.storyText()
        choice1Button.setTitle(storyBrain.choice1Text(), for: .normal)
        choice2Button.setTitle(storyBrain.choice2Text(), for: .normal)
        storyBrain.dead(userChoice: "o")
        
        if storyLabel.text == storyBrain.wolfStoryList[10].story {
            let text: String = storyBrain.wolfStoryList[10].story
            let attributeString = NSMutableAttributedString(string: text)
            attributeString.addAttribute(.foregroundColor, value: UIColor.red, range: (text as NSString).range(of: "화난 늑대"))
            self.storyLabel.attributedText = attributeString
        }
    }
}


