import UIKit

class StartViewController: UIViewController {
    @IBOutlet weak var startButton: UIImageView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        startButton.layer.cornerRadius = 25
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        performSegue(withIdentifier: "SelectView", sender: self)
    }
}

class SelectViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceButton1: UIButton!
    @IBOutlet weak var choiceButton2: UIButton!
    var storyBrain: StoryBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.layer.cornerRadius = 20
        choiceButton1.layer.cornerRadius = 20
        choiceButton2.layer.cornerRadius = 20
        updateUI()
    }
    
    @IBAction func choiceButton(_ sender: UIButton) {
        storyBrain.nextStory(userSelect: sender.currentTitle!)
        storyBrain.dead(userChoice: sender.currentTitle!) // ð¤ : í¨ìë¥¼ í¸ì¶íê³  ì¬ì©ë ì ì´ ìì´ì xcodeê° ê²½ê³ ë¥¼ íê³ ììµëë¤. ì´ í¨ìë ì í¸ì¶íëì§ ìê°í´ë³´ê³  ê²°ê³¼ë¥¼ ì¬ì©íì§ ìëë¤ë©´ ìì ì¸ì.
        if sender.currentTitle == storyBrain.wolfStoryList[0].choiceTwo.0 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[2].choiceOne.0 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[5].choiceOne.0 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[8].choiceOne.0 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[8].choiceTwo.0 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[10].choiceTwo.0 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[14].choiceTwo.0 {
            performSegue(withIdentifier: "dead", sender: self)
        } else if sender.currentTitle == storyBrain.wolfStoryList[15].choiceTwo.0 {
            performSegue(withIdentifier: "dead", sender: self)
        }
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateUI() {
        storyLabel.text = storyBrain.storyText()
        choiceButton1.setTitle(storyBrain.choice1Text(), for: .normal)
        choiceButton2.setTitle(storyBrain.choice2Text(), for: .normal)
        storyBrain.dead(userChoice: "o") // ð¤ : í¨ìë¥¼ í¸ì¶íê³  ì¬ì©ë ì ì´ ìì´ì xcodeê° ê²½ê³ ë¥¼ íê³ ììµëë¤.
        // ì´ í¨ìë ì í¸ì¶íëì§ ìê°í´ë³´ê³  ê²°ê³¼ë¥¼ ì¬ì©íì§ ìëë¤ë©´ ìì ì¸ì.
        if storyLabel.text == storyBrain.wolfStoryList[10].story {
            let text: String = storyBrain.wolfStoryList[10].story
            let attributeString = NSMutableAttributedString(string: text)
            attributeString.addAttribute(.foregroundColor, value: UIColor.red, range: (text as NSString).range(of: "íë ëë"))
            self.storyLabel.attributedText = attributeString
        }
    }
}

class DeadViewController:UIViewController {
    @IBOutlet weak var deadReason: UILabel!
    @IBOutlet weak var deadLabel: UILabel!
    @IBOutlet weak var returnButton: UIButton!
    var storyBrain: StoryBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deadLabel.text = "You are Dead"
        deadLabel.textColor = .systemRed
        deadLabel.font = .italicSystemFont(ofSize: 50)
        deadLabel.textAlignment = .center
        returnButton.layer.cornerRadius = 30
        deadReason.text = storyBrain.dead(userChoice: "d")
    }
    
    @IBAction func returnButton(_ sender: UIButton) {
        performSegue(withIdentifier: "return", sender: self)
    }
}

