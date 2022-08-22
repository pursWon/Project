

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
        
        let number1 = Int(numberTextField1.text!)!
        let number2 = Int(numberTextField2.text!)!
        
        let plus = number1 + number2
        let plusResult = String(plus)
        
        if plusButton.backgroundColor == .systemCyan {
            
            resultLabel.text = plusResult
            
        }
        
        let minus = number1 - number2
        let minusResult = String(minus)
        
        if minusButton.backgroundColor == .systemCyan {
            
            resultLabel.text = minusResult
            
        }
        
        let multiply = number1 * number2
        let multiplyResult = String(multiply)
        
        if multiplyButton.backgroundColor == .systemCyan {
            
            resultLabel.text = multiplyResult
            
        }
        
        let divide = Double(number1) / Double(number2)
        let divideResult = String((Double(divide)))
        
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



