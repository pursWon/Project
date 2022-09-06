//
//  ViewController.swift
//  TableViewEx
//
//  Created by MacBook Air on 2022/08/31.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var manArray: [String] = ["Sarkis Lilit1", "Aleks Lucineh1", "Talin Susanna1", "Sargis Almast1", "Nazaret Nerses1"]
    var womanArray: [String] = ["Petros Gayane0", "Perchuhi Jirair0", "Ruzanna Susanna0", "Tatev Takouhi0", "Margarit Daniel0"]
    
    @IBOutlet weak var contactTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // protocol
        contactTableView.dataSource = self
        contactTableView.delegate = self
        
        manArray = manArray.sorted()
        womanArray = womanArray.sorted()
        
        // contactArray = contactArray.sorted() // 다시 보기, 배열을 정렬하는 메소드
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "man"
        }
        
        return "woman"
    }
    // 몇 개의 row를 보여줄 지 개수를 리턴하는 함수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return manArray.count
        }
        
        return womanArray.count
    }
    // 어떻게 생긴 cell을 보여줄 지 + 그d 셀에 어떤 데이터를 보여줄 지 설정하여 리턴하는 함수
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: "contactCell")
        
        if indexPath.section == 0 {
            cell.textLabel?.text = manArray[indexPath.row]
        } else {
            cell.textLabel?.text = womanArray[indexPath.row]
        }
        
            return cell
        }
}

