import UIKit

class FirstViewController: UIViewController, SampleProtocol{
    // MARK: UI
    @IBOutlet weak var resultLabel: UILabel!
    
    // MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func sendData(data: String) {
        resultLabel.text = data
    }
    
    // MARK: Actions
    @IBAction func changeButtonClicked(_ sender: UIButton) {
        guard let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        as? SecondViewController else { return }
        secondVC.delegate = self
        
        present(secondVC, animated: true)
    }
}

