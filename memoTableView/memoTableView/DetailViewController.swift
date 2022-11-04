
import UIKit

class DetailViewController: UIViewController {
    
    var detailMemo: Memo?
    
    @IBOutlet weak var existingMemo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.existingMemo.text = detailMemo?.content
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        guard let memo = existingMemo.text, memo.count > 0 else {
            return
        }
        
        let modifiedMemo = Memo(content: memo)
        Memo.memoList.insert(modifiedMemo, at: Memo.memoList)
        
    }
}

