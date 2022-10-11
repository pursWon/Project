
import UIKit

class ComposeViewController: UIViewController {
    
    override func viewDidLoad() {
        
    }
    
    @IBOutlet weak var memoText: UITextView!
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true)
    }
    
    
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        guard let memo = memoText.text, memo.count > 0 else {
            return
        }
        
        let newMemo = Memo(content: memo)
        Memo.memoList.append(newMemo)
        dismiss(animated: true, completion: nil)
    }
    
}
