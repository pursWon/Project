import UIKit

class ViewController: UIViewController {
    /* 레이블 1개
     전송 버튼 1개
     글자 색깔 바꿔줄 버튼 1개
     글자를 적을 텍스트필드 1개
     가로로 고정
     */
    
    /*
     어떤 기능이 필요한가?
     
     1. 버튼을 눌렀을 때 textField에 있는 내용을 contentLabel에 보여준다.
     2. colorChangeButton을 눌렀을 때, 레이블의 색을 바꿔준다. (검정색은 제외)
     3. 색의 랜덤 배열을 만들어줘야 한다. 현재 글자색을 저장을 해줄 변수가 필요함.
     변수의 이름은 currentcolor로 지정
     */
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let color: [UIColor] = [.cyan, .blue, .green, .lightGray, .orange, .red, .yellow, .magenta]
    var currentColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.placeholder = "입력해주세요"
    }
    
    @IBAction func sendButton(_ sender: UIButton) {
        if textField.text != "" {
            contentLabel.text = textField.text
            textField.text = ""
        }
    }
    
    @IBAction func colorChangeButton(_ sender: UIButton) {
        var randomColor: UIColor? = color.randomElement()
        
        if let currentColor = currentColor {
            while currentColor == randomColor {
                randomColor = color.randomElement()
            }
        } else {
            currentColor = color.randomElement()
            contentLabel.textColor = currentColor
            return
        }
        currentColor = randomColor
        contentLabel.textColor = currentColor
    }
}

