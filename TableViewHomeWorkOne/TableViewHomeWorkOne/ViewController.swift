//
//  ViewController.swift
//  TableViewHomeWorkOne
//
//  Created by MacBook Air on 2022/09/02.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var kim: [(name: String, age: Int)] = [("김하성", 29), ("김소진", 20), ("김종하", 21)]
    var lee: [(name: String, age: Int)] = [("이수호", 32), ("이민재", 22)]
    var park: [(name: String, age: Int)] = [("박민지", 17), ("박수민", 25), ("박재우", 26)]
    var choi: [(name: String, age: Int)] = [("최지우", 30), ("최선아", 24)]

    @IBOutlet weak var contactTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // protocol
        contactTableView.dataSource = self
        contactTableView.delegate = self

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "김"
        }
        
        if section == 1 {
            return "이"
        }
        
        if section == 2 {
            return "박"
        }
        
        return "최"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return kim.count
        }
        
        if section == 1 {
            return lee.count
        }
        
        if section == 2 {
            return park.count
        }
        
        return choi.count
        
    } // 몇 개의 row를 보여줄 지 갯수를 리턴하는 함수
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: .subtitle, reuseIdentifier: "contactCell")
        
        let kimName = [kim[0].name, kim[1].name, kim[2].name].sorted()
        let kimAge = [kim[0].age, kim[1].age, kim[2].age].sorted(by: <)
        
        let leeName = [lee[0].name, lee[1].name].sorted()
        let leeAge = [lee[0].age, lee[1].age].sorted(by: <)
        
        let parkName = [park[0].name, park[1].name, park[2].name].sorted()
        let parkAge = [park[0].age, park[1].age, park[2].age].sorted(by: <)
                        
        let choiName = [choi[0].name, choi[1].name].sorted()
        let choiAge = [choi[0].age, choi[1].age].sorted(by: <)
        
        let section = indexPath.section
        
        if section == 0  {
            cell.textLabel?.text = "이름 : " + kimName[indexPath.row]
            cell.detailTextLabel?.text = "나이 : " + kimAge.map { String($0) }[indexPath.row] + " 세"
        } else if section == 1 {
            cell.textLabel?.text = "이름 : " + leeName[indexPath.row]
            cell.detailTextLabel?.text = "나이 : " + leeAge.map { String($0) }[indexPath.row] + " 세"
        } else if section == 2 {
            cell.textLabel?.text = "이름 : " + parkName[indexPath.row]
            cell.detailTextLabel?.text = "나이 : " + parkAge.map { String($0) }[indexPath.row] + " 세"
        } else if section == 3 {
            cell.textLabel?.text = "이름 : " + choiName[indexPath.row]
            cell.detailTextLabel?.text =  "나이 : " + choiAge.map { String($0) }[indexPath.row] + " 세"
        }
        
        return cell
    } // 어떻게 생긴 cell을 보여줄 지 + 그 cell에 어떤 데이터를 보여줄지 설정하여 리턴하는 함수
}

//if indexPath.section == 0 {
//
//    if indexPath.row == 0 {
//        cell.textLabel?.text = "이름 : " + kim[1].name
//        cell.detailTextLabel?.text = "나이 : " + String(kim[1].age) + " 세"
//    }
//
//    if indexPath.row == 1 {
//        cell.textLabel?.text = "이름 : " + kim[0].name
//        cell.detailTextLabel?.text = "나이 : " + String(kim[0].age) + " 세"
//    }
//
//    if indexPath.row == 2 {
//        cell.textLabel?.text = "이름 : " + kim[2].name
//        cell.detailTextLabel?.text = "나이: " + String(kim[2].age) + " 세"
//    }
//}
//
//if indexPath.section == 1 {
//
//    if indexPath.row == 0 {
//        cell.textLabel?.text = "이름 : " + lee[1].name
//        cell.detailTextLabel?.text = "나이 : " + String(lee[1].age) + " 세"
//    }
//
//    if indexPath.row == 1 {
//        cell.textLabel?.text = "이름 : " + lee[0].name
//        cell.detailTextLabel?.text = "나이 : " + String(lee[0].age) + " 세"
//    }
//}
//
//if indexPath.section == 2 {
//
//    if indexPath.row == 0 {
//        cell.textLabel?.text = "이름 : " + park[0].name
//        cell.detailTextLabel?.text = "나이 : " + String(park[0].age) + " 세"
//    }
//
//    if indexPath.row == 1 {
//        cell.textLabel?.text = "이름 : " + park[1].name
//        cell.detailTextLabel?.text = "나이 : " + String(park[1].age) + " 세"
//    }
//
//    if indexPath.row == 2 {
//        cell.textLabel?.text = "이름 : " + park[2].name
//        cell.detailTextLabel?.text = "나이 : " + String(park[2].age) + " 세"
//    }
//}
//
//if indexPath.section == 3 {
//
//    if indexPath.row == 0 {
//        cell.textLabel?.text = "이름 : " + choi[1].name
//        cell.detailTextLabel?.text = "나이 : " + String(choi[1].age) + " 세"
//    }
//
//    if indexPath.row == 1 {
//        cell.textLabel?.text = "이름 : " + choi[0].name
//        cell.detailTextLabel?.text = "나이 : " + String(choi[0].age) + " 세"
//    }
//}
