import UIKit

protocol SampleProtocol {
    func sendData(data: String)
}

class SecondViewController: UIViewController {
    // MARK: Properties
    var delegate: SampleProtocol?
    
    // MARK: UI
    @IBOutlet weak var textField: UITextField!
    
    // MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // MARK: Actions
    
    @IBAction func goBackButtonClicked(_ sender: UIButton) {
    dismiss(animated: true)
    }
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        if textField.text?.isEmpty == false {
            if let text = textField.text {
                delegate?.sendData(data: text)
            }
            dismiss(animated: true)
        }
    }
}

