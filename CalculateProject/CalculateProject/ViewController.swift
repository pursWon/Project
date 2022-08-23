

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberTextField1: UITextField!
    @IBOutlet weak var numberTextField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var questionmarkLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        questionmarkLabel.text = "+"
        plusButton.backgroundColor = .systemCyan
        minusButton.backgroundColor = .lightGray
        multiplyButton.backgroundColor = .lightGray
        divideButton.backgroundColor = .lightGray
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        questionmarkLabel.text = "-"
        plusButton.backgroundColor = .lightGray
        minusButton.backgroundColor = .systemCyan
        multiplyButton.backgroundColor = .lightGray
        divideButton.backgroundColor = .lightGray
    }
    
    @IBAction func multiplyButton(_ sender: UIButton) {
        questionmarkLabel.text = "*"
        plusButton.backgroundColor = .lightGray
        minusButton.backgroundColor = .lightGray
        multiplyButton.backgroundColor = .systemCyan
        divideButton.backgroundColor = .lightGray
    }
    
    @IBAction func divideButton(_ sender: UIButton) {
        questionmarkLabel.text = "/"
        plusButton.backgroundColor = .lightGray
        minusButton.backgroundColor = .lightGray
        multiplyButton.backgroundColor = .lightGray
        divideButton.backgroundColor = .systemCyan
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let number1: Double? = Double(numberTextField1.text!)
        let number2: Double? = Double(numberTextField2.text!)
        
        // guard let을 통해 number1을 안전하게 가져와서 firstNumber라는 상수에 담아준다.
        // guard let을 통해 number2도 안전하게 가져와서 secondNumber라는 상수에 담아준다.
        // 안전하게 가져오는 것을 성공한 경우, 계산하는 코드를 넣어준다.
        // 안전하게 가져오는 것을 실패한 경우, 계산 대신에 "이곳엔 문자를 넣을 수 없습니다." 라고 resultLabel.text에 대입해준다.
        
        guard let firstNumber = number1, let secondNumber = number2 else {
            resultLabel.text = "이곳엔 문자를 넣을 수 없습니다."
            return
        }
        
        let plus: Double = firstNumber + secondNumber
        let plusResult: String = String(plus)
        
        if plusButton.backgroundColor == .systemCyan {
            resultLabel.text = plusResult
        }
        
        let minus: Double = firstNumber - secondNumber
        let minusResult: String = String(minus)
        
        if minusButton.backgroundColor == .systemCyan {
            resultLabel.text = minusResult
        }
        
        let multiply: Double = firstNumber * secondNumber
        let multiplyResult: String = String(multiply)
        
        if multiplyButton.backgroundColor == .systemCyan {
            resultLabel.text = multiplyResult
        }
        
        let divide: Double = firstNumber / secondNumber
        let divideResult: String = String(divide)
        
        if divideButton.backgroundColor == .systemCyan {
            resultLabel.text = divideResult
            
            if number2 == 0 {
                resultLabel.text = "0으로 나눗셈을 하는 것은 불가능합니다."
            }
        }
    }
    
    @IBAction func initializerButton(_ sender: UIButton) {
        numberTextField1.text = ""
        numberTextField2.text = ""
        questionmarkLabel.text = "?"
        resultLabel.text = "= 연산결과"
        plusButton.backgroundColor = .lightGray
        minusButton.backgroundColor = .lightGray
        multiplyButton.backgroundColor = .lightGray
        divideButton.backgroundColor = .lightGray
    }
    
}
