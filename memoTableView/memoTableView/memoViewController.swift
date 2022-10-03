
import UIKit

class MemoViewController: UIViewController {
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func toHome(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        guard let memo = memoTextView.text,
              memo.count > 0 else {
            alert(message: "메모를 입력하세요")
            return
        }
        
        let newMemo = MemoView(content: memo)
        MemoView.dummyList.append(newMemo)
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var memoTextView: UITextView!
}
