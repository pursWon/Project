import UIKit

class StartViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
     
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
        updateUI()
    }
    
    @IBAction func choiceButton(_ sender: UIButton) {
        storyBrain.nextStory(userSelect: sender.currentTitle!)
        storyBrain.dead(userChoice: sender.currentTitle!) // 🤔 : 함수를 호출하고 사용된 적이 없어서 xcode가 경고를 하고있습니다. 이 함수는 왜 호출했는지 생각해보고 결과를 사용하지 않는다면 없애세요.
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
        storyBrain.dead(userChoice: "o") // 🤔 : 함수를 호출하고 사용된 적이 없어서 xcode가 경고를 하고있습니다.
        // 이 함수는 왜 호출했는지 생각해보고 결과를 사용하지 않는다면 없애세요.
        if storyLabel.text == storyBrain.wolfStoryList[10].story {
            let text: String = storyBrain.wolfStoryList[10].story
            let attributeString = NSMutableAttributedString(string: text)
            attributeString.addAttribute(.font, value: UIColor.red, range: (text as NSString).range(of: "화난 늑대"))
            self.storyLabel.attributedText = attributeString
        }
    }
}

class DeadViewController: UIViewController {
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
        deadReason.text = storyBrain.dead(userChoice: "d")
    }
    
    @IBAction func returnButton(_ sender: UIButton) {
        performSegue(withIdentifier: "return", sender: self)
    }
}
