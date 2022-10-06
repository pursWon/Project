//
//  ViewController.swift
//  DiceeGame
//
//  Created by MacBook Air on 2022/10/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // dice 숫자들의 이미지 배열을 만든다.
    // 배열[Int.random(in: 0...5)] 형식을 변수에 넣어준다.
    // 버튼 액션 함수에 변수를 넣어준다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = UIImage.init(imageLiteralResourceName: "diceSix")
        diceImageView2.image = UIImage.init(imageLiteralResourceName: "diceTwo")
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceRandom: [UIImage] = [
            UIImage.init(imageLiteralResourceName: "diceeOne"),
            UIImage.init(imageLiteralResourceName: "diceTwo"),
            UIImage.init(imageLiteralResourceName: "diceThree"),
            UIImage.init(imageLiteralResourceName: "diceFour"),
            UIImage.init(imageLiteralResourceName: "diceFive"),
            UIImage.init(imageLiteralResourceName: "diceSix")
        ]
        print("Button get Tapped")
        diceImageView1.image = diceRandom[Int.random(in: 0...5)]
        diceImageView2.image = diceRandom[Int.random(in: 0...5)]
    }
    
    
}

