
import UIKit

class DetailViewController: UIViewController {

    var memo: Memo?
    
    @IBOutlet weak var existingMemo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        existingMemo.text = memo?.content
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
      
    }
    
    
}

