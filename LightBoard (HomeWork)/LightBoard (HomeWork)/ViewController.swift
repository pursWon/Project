import UIKit

class ViewController: UIViewController {
    
    /*
     텍스트 필드 1개
     텍스트를 전달받을 레이블 1개
     전송 버튼 1개
     색을 변경할 버튼 1개
     */
    
    /* <sendButton Action>
     sendButton을 눌렀을 때, textField와 contentLabel의 값이 동일해야 한다.
     textField가 비어있을 때의 값이 전송되면 안되므로, 조건을 설정해줘야 한다.
     그리고 send 버튼을 눌렀을 때 textField의 값도 사라지게 할 것이다.
     
     
     */
    
    /* <colorButton Action>
     colorButton을 눌렀을 때, 글자의 색이 랜덤 색상의 배열의 색 하나를 골라서
     변경되도록 할 것이다. 먼저, 색상의 값이 여러개 있는 배열을 만들어주고, 현재 색상의 값을 하나 만들어준다.
     */
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var contentLabel: UILabel!
    
    let colors: [UIColor] = [.magenta, .yellow, .systemOrange, .red, .systemIndigo, .green, .blue , .purple, .darkGray, .brown, .systemPink, .systemCyan, .white]
    var currentColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.placeholder = "텍스트를 입력해주세요"
        contentLabel.font = UIFont.systemFont(ofSize: 130)
    }
    
    @IBAction func sendButton(_ sender: UIButton) {
        if textField.text != "" {
            contentLabel.text = textField.text
            textField.text = ""
            contentLabel.adjustsFontSizeToFitWidth = true
            contentLabel.minimumScaleFactor = 0.1
        }
        
    }
    
    @IBAction func colorButton(_ sender: UIButton) {
        var randomColor: UIColor? = colors.randomElement()
        if let color = currentColor {
            while color == randomColor {
                randomColor = colors.randomElement()
            }
        } else {
            currentColor = randomColor
            contentLabel.textColor = currentColor
            return
        }
        currentColor = randomColor
        contentLabel.textColor = currentColor
    }
}

