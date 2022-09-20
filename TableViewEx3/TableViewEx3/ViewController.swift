//
//  ViewController.swift
//  TableViewEx3
//
//  Created by MacBook Air on 2022/09/15.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 10 
    }
    
    struct Friend {
        let name: String
        let comment: String
        let image: UIImage!
    }
    
    var FriendList: [Friend] = [
        Friend(name: "한수지", comment: "hi", image: UIImage(named: "profile.jpeg")),
        Friend(name: "박미래", comment: "술 마시고 싶군", image: UIImage(named: "profile.jpeg")),
        Friend(name: "강인아", comment: "행복하게 살자..", image: UIImage(named: "profile.jpeg")),
        Friend(name: "박인준", comment: " ", image: UIImage(named: "profile.jpeg")),
        Friend(name: "한예원", comment: "그래 내가 참지 뭐", image: UIImage(named: "profile.jpeg")),
        Friend(name: "이종수", comment: "헤헤", image: UIImage(named: "profile.jpeg")),
        Friend(name: "이병건", comment: "침착", image: UIImage(named: "profile.jpeg")),
        Friend(name: "(no name)", comment: "rain", image: UIImage(named: "profile.jpeg")),
        Friend(name: "홍원기", comment: "🍷", image: UIImage(named: "profile.jpeg")),
        Friend(name: "이상순", comment: " ", image: UIImage(named: "profile.jpeg"))
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    class myCells: UITableViewCell {
        
        override func layoutSubviews() {
            super.layoutSubviews()
            contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 70, left: 0, bottom: 0, right: 0))
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let profileImage = UIImage(named: "profile.jpeg")
        
        let myImageView: UIImageView = UIImageView()
        myImageView.image = profileImage
        
        myImageView.layer.cornerRadius = CGFloat(30)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        for i in 0...9 {
            if indexPath.row == i {
                cell.textLabel?.text = FriendList[i].name
                cell.detailTextLabel?.text = FriendList[i].comment
                cell.imageView?.image = FriendList[i].image
            }
        }
        
        return cell
    }
    
    
}



