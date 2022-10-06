
import UIKit

struct friend {
    
    var name: String
    var comment: String
    var image: UIImage = UIImage(named: "profile.jpeg")!
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var friendList: [friend] = [
        friend(name: "김수진", comment: "와타시다"),   
        friend(name: "오승우", comment: "아하"),
        friend(name: "좌영호", comment: ""),
        friend(name: "홍원기", comment: "배고프다", image: UIImage(named: "taru.jpeg")!),
        friend(name: "이광진", comment: "산..그리고 사랑..")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? MyCell else { return UITableViewCell() }
        
        let friend = friendList[indexPath.row]
        
        cell.nameLabel.text = friend.name
        cell.commentLabel.text = friend.comment
        cell.profileImage.image = friend.image
        cell.layer.cornerRadius = 25
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

class MyCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
}
    
