//
//  ViewController.swift
//  TableViewEx3
//
//  Created by MacBook Air on 2022/09/15.
//

import UIKit


// 모델 설정(구조체)는 class 밖에서 해야한다.
struct Friend {
    let name: String
    let comment: String
    let image: UIImage = UIImage(named: "profile.jpeg")! // 이미지값의 기본 이미지
    // profile.jpeg는 Assets에 저장한다.
}

// ViewController의 클래스
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // 테이블뷰의 필수 프로토콜 : numberOfRowInSection, 섹션에 있는 행의 개수를 리턴
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendList.count
    }
    
    var friendList: [Friend] = [
        Friend(name: "한수지", comment: "hi"), // UIImage값은 기본값으로 사용할 것이므로 생략이 가능하다.
        Friend(name: "박미래", comment: "술 마시고 싶군"),
        Friend(name: "강인아", comment: "행복하게 살자.."),
        Friend(name: "박인준", comment: ""),
        Friend(name: "이종수", comment: "헤헤"),
        Friend(name: "이병건", comment: "침착"),
        Friend(name: "(no name)", comment: "rain"),
        Friend(name: "홍원기", comment: "🍷"),
        Friend(name: "이상순", comment: "")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 테이블뷰의 필수 프로토콜 : dataSource, delegate
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // 테이블뷰의 필수 프로토콜 : 셀에 어떤 내용을 넣을것인가에 대한 내용을 return
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as? MyCell else
        { return UITableViewCell() }
        
        let friend = friendList[indexPath.row]
        // friendList의 내용을 indexPath.row(테이블뷰의 모든 행들)에 저장한 후 상수 friend에 담아준다.
        
        cell.nameLabel.text = friend.name
        cell.commentLabel.text = friend.comment
        cell.profile.image = friend.image
        cell.profile.layer.cornerRadius = 20
        cell.nameLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        return cell
    }
    
    // heightForRowAt : 각 셀의 높이를 설정해준다.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

// cell의 클래스는 UITableViewCell로 설정해주고 ViewController의 class 밖에 만들어준다.
class MyCell: UITableViewCell {
    
    @IBOutlet weak var profile: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
}


