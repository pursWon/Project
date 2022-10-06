//
//  ComposeViewController.swift
//  MyMemo
//
//  Created by MacBook Air on 2022/10/05.
//

import UIKit

class ComposeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true)
    }
    
    @IBOutlet weak var memoTextView: UITextView!
    
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
    
        guard let memo = memoTextView.text, memo.count > 0 else {
        alert(message: "메모를 입력하세요.")
        return
        }
        
        let newMemo = Memo(content: memo)
        Memo.dummyMemoList.append(newMemo)
        // 여기서 새로운 메모의 인스턴스를 생성하고 배열에 저장할 것이다
        
        dismiss(animated: true)
    }
    
    
    
    

}
