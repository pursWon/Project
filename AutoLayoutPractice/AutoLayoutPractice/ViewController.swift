//
//  ViewController.swift
//  AutoLayoutPractice
//
//  Created by MacBook Air on 2022/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var 안: UITextField!
    @IBOutlet weak var 안녕: UITextField!
    @IBOutlet weak var 안녕하: UITextField!
    @IBOutlet weak var 안녕하세: UITextField!
    @IBOutlet weak var 안녕하세요: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.안.adjustsFontSizeToFitWidth = true
        self.안.minimumFontSize = 10
        안녕.adjustsFontSizeToFitWidth = true
        안녕하.adjustsFontSizeToFitWidth = true
    }
}

