import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var goodLabel: UILabel!
    
    var checked: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        let text: String = "rodrigo_bentancur ¡Hoy nos vamos al Mundial de Qatar! ¡Definitivamente lograremos grandes objetivos allí y haremos feliz a la gente! ¡Vámonos a Uruguay!🇺🇾🇺🇾🇺🇾🇺🇾🇺🇾"
        let attributeString = NSMutableAttributedString(string: text)
        attributeString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 17) , range: (text as NSString).range(of: "rodrigo_bentancur"))
        textLabel.attributedText = attributeString
    }
    
    @IBAction func heartButton(_ sender: UIButton) {
        if checked == false {
            sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            checked = true
            goodLabel.text = "좋아요 31개"
        } else if checked == true {
            sender.setImage(UIImage(systemName: "heart"), for: .normal)
            checked = false
            goodLabel.text = "좋아요 30개"
        }
    }
}

