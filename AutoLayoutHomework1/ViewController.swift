//
//  ViewController.swift
//  AutoLayoutHomework1
//
//  Created by MacBook Air on 2022/08/08.
//

import UIKit

class ViewController: UIViewController {
    
    
    let colorList: [UIColor] = [.gray, .green, .red]
    
    let contentLabelColorList: [UIColor] = [.darkGray, .magenta, .systemMint, .systemIndigo]
    
    let contentLabelLetterColorList: [UIColor] =
    [.red, .cyan, .brown, .systemIndigo, .opaqueSeparator, .blue, .green]
    
    // 변수나 상수
    // 네이밍 : 변수나 상수에 대한 이름은 명사로 짓는다.
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var contentTextField: UITextField!
    
    // 화면에 필요한 초기값 데이터를 대입해줄 때 사용
    override func viewDidLoad() {
        super.viewDidLoad()

        // backgroundcolor : 배경색
        // tintColor : 글자색
        // Do any additional setup after loading the view.
    }

// 액션
// 네이밍 : 액션에 대한 이름이 동사로 짓는다.
    
    @IBAction func sendButton(_ sender: UIButton) {
        print("초록 버튼 눌림")
        
        contentLabel.text = contentTextField.text
    }
    
    @IBAction func initailzeButton(_ sender: UIButton) {
        print("빨간 버튼 눌림")
        
        contentTextField.text = ""
    }

    
    
    
    
    @IBAction func changeColorButton(_ sender: UIButton) {
        
        let randomColor: UIColor? = colorList.randomElement()
        
        if let color = randomColor {
            view.backgroundColor = color
        }
       
        
        print("파란 버튼 눌림")
        
        // 버튼을 눌렀을 때 colorList 배열에서 랜덤으로 하나의 색깔을 가져와서, view의 배경색을 그 색깔로 바꿔준다.
    }
    
    
    @IBAction func contentLabelBackGroundChange(_ sender: UIButton) {
        
        let contentLabelColor: UIColor? = contentLabelColorList.randomElement()
        
        contentLabel.backgroundColor = contentLabelColor
    
    }
    
    @IBAction func contentLabelLettersChange(_ sender: UIButton) {
    
        let contentLabelLettersColor: UIColor? = contentLabelLetterColorList.randomElement()
        
        if let contentLableText = contentLabelLettersColor {
            contentLabel.textColor = contentLableText
        }
        
    }
    
    
    @IBAction func InitializerButton(_ sender: UIButton) {
        
        view.backgroundColor = .white
        contentLabel.text = "얼럿 문구 지정"
        contentLabel.textColor = .black
        contentLabel.backgroundColor = .yellow
        contentTextField.text = ""
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}

