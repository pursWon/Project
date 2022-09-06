

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberOneTextField: UITextField!
    @IBOutlet weak var numberTwoTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var questionmarkLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UINavigationBarAppearance()
                appearance.configureWithTransparentBackground()
                appearance.backgroundColor = UIColor.systemBlue
                appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
                navigationItem.standardAppearance = appearance
                navigationItem.scrollEdgeAppearance = appearance
    }
    
    @IBAction func plusButton(_ sender: UIButton) { // 버튼에 작동하는 기능 코드들 줄일 수 있는 방법 모색해보기
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
        let numberOne: Int? = Int(numberOneTextField.text!)
        let numberTwo: Int? = Int(numberTwoTextField.text!)
        
        // guard let을 통해 numberOne을 안전하게 가져와서 firstNumber라는 상수에 담아준다.
        // guard let을 통해 numberTwo도 안전하게 가져와서 secondNumber라는 상수에 담아준다.
        // 안전하게 가져오는 것을 성공한 경우, 계산하는 코드를 넣어준다.
        // 안전하게 가져오는 것을 실패한 경우, 계산 대신에 "이곳엔 문자를 넣을 수 없습니다." 라고 resultLabel.text에 대입해준다.
        
        guard let firstNumber = numberOne, let secondNumber = numberTwo else {
            resultLabel.text = "이곳엔 문자를 넣을 수 없습니다"
            return
        } // if let, guard let으로 변경한 거 다시 복습해보기
        
        let plus: Int = firstNumber + secondNumber
        let plusResult: String = String(plus)
        
        if plusButton.backgroundColor == .systemCyan {
            resultLabel.text = plusResult
        }
        
        let minus: Int = firstNumber - secondNumber
        let minusResult: String = String(minus)
        
        if minusButton.backgroundColor == .systemCyan {
            resultLabel.text = minusResult
        }
        
        let multiply: Int = firstNumber * secondNumber
        let multiplyResult: String = String(multiply)
        
        if multiplyButton.backgroundColor == .systemCyan {
            resultLabel.text = multiplyResult
        }
        
        let divideFirstNumber: Double = Double(firstNumber)
        let divideSecondNumber: Double = Double(secondNumber)
        let divide: Double = divideFirstNumber / divideSecondNumber
        let divideResult: String = String(divide)
        
        if divideButton.backgroundColor == .systemCyan {
            resultLabel.text = divideResult
            
            if divideSecondNumber == 0 {
                resultLabel.text = "0으로 나누기가 불가능"
            }
        }
    }
    
    @IBAction func initializerButton(_ sender: UIButton) {
        numberOneTextField.text = ""
        numberTwoTextField.text = ""
        questionmarkLabel.text = "?"
        resultLabel.text = "= 연산결과"
        plusButton.backgroundColor = .lightGray
        minusButton.backgroundColor = .lightGray
        multiplyButton.backgroundColor = .lightGray
        divideButton.backgroundColor = .lightGray
    }
    
} // 코드 수정한 거 규칙을 지키면서 수정한거 다시 복습하기
