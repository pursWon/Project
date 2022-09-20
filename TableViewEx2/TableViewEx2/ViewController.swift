//
//  ViewController.swift
//  TableViewEx2
//
//  Created by MacBook Air on 2022/09/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // 섹션의 행의 개수를 리턴
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 3
    }
    
    // tableView는 UITableView. cell의 행은 indexPath로 결정한다. UITableViewCell를 리턴
    // tableView의 내용이 어떤 내용인지 알려주는 함수
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as? MyCell else { return UITableViewCell() }
        
        cell.myLabel.text = "(\(indexPath.section), \(indexPath.row))"
        
        return cell
        
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tableView를 만들기전에 무조건 선언해야함
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    // 섹션의 개수를 리턴해주는 함수. 개수를 리턴해주므로 Int를 리턴해준다.
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // 각 섹션의 위에 텍스를 달 수 있는 함수. 필수는 아니므로 리턴해주는 String 값은 옵셔널이다.
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Section \(section)"
//    }
    
    
    
}

// UITableViewCell를 클래스 MyCell로 이름을 짓고 사용할 수 있다.
class MyCell: UITableViewCell {
    @IBOutlet weak var myLabel: UILabel!
    
}

