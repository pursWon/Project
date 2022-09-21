//
//  ViewController.swift
//  TableViewEx3Copy1
//
//  Created by MacBook Air on 2022/09/21.
//

import UIKit

struct friend {
    var name: String
    var comment: String
    var profile: UIImage = UIImage(named: "profile.jpeg")!
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var friendList: [friend] = [
        
    friend(name: "장영민", comment: "아이유 콘서트 !"),
    friend(name: "박경호", comment: "굿"),
    friend(name: "주지승", comment: "지식으로 승부하자"),
    friend(name: "진승아", comment: "승아야 밥먹자"),
    friend(name: "홍원기", comment: "ios 개발자가 되고 싶습니다 크크큭.."),
    friend(name: "이아름", comment: "승규"),
    friend(name: "김제니", comment: ""),
    friend(name: "구성훈", comment: "대장내시경")
    
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? MyCell else  { return UITableViewCell() }
        
        let friend = friendList[indexPath.row]
        
        cell.nameLabel.text = friend.name
        cell.commentLabel.text = friend.comment
        cell.profileImage.image = friend.profile
        cell.profileImage.layer.cornerRadius = 25
        cell.nameLabel.font = .systemFont(ofSize: 20, weight: .black)
        
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

class MyCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
}

