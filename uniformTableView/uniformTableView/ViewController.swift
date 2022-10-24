

import UIKit

struct Uniform {
    var name: String
    var price: String = "No Pricing Information"
    var image: UIImage = UIImage(named: "basic uniform.png")!
    var cellNumber: Int
}



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var name: String?
    var number: Int?
    
    var uniformList: [Uniform] = [
        Uniform(name: "France Home Kit Qatar World Cup", price: "135€", image: UIImage(named: "france 2223.jpeg")!, cellNumber: 0),
        Uniform(name: "Tottenham Home Kit 22 - 23", image: UIImage(named: "tottenham 2223.jpeg")!, cellNumber: 1),
        Uniform(name: "Fulham Home Kit 22 - 23", price: "120€", image: UIImage(named: "fulham 2223.jpeg")!, cellNumber: 2),
        Uniform(name: "Arsenal Away Kit 22 - 23", price: "115€", cellNumber: 3),
        Uniform(name: "Germany Home Kit 16 - 17", price: "160€", image: UIImage(named: "germany 1617.jpeg")!, cellNumber: 4),
        Uniform(name: "Manchester City Home Kit 13 - 14", image: UIImage(named: "manchester city 1314.jpeg")!, cellNumber: 5),
        Uniform(name: "Napoli Home Kit 22 - 23", price: "142€", image: UIImage(named: "napoli 2223.jpeg")!, cellNumber: 6),
        Uniform(name: "Juventus Away Kit 22 - 23", price: "145€", image: UIImage(named: "juventus 2223.jpeg")!, cellNumber: 7),
        Uniform(name: "Leicester City Home Kit 22 - 23", price: "133€", image: UIImage(named: "leicester 2223.jpeg")!, cellNumber: 8),
        Uniform(name: "AC Milan Home Kit 22 - 23", price: "167€", image: UIImage(named: "ac milan 2223.jpeg")!, cellNumber: 9),
        Uniform(name: "Real Madrid Home Kit 22 - 23", price: "120€", image: UIImage(named: "real madrid 2223.jpeg")!, cellNumber: 10),
        Uniform(name: "Liverpool Home Kit 22 - 23", price: "190€", cellNumber: 11)
    ]
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uniformList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UniformCell", for: indexPath) as? UniformCell else { return UITableViewCell() }
        
        let uniform = uniformList[indexPath.row]
        name = uniform.name
        cell.nameLabel.text = uniform.name
        cell.priceLabel.text = uniform.price
        cell.uniformImage.image = uniform.image
        cell.nameLabel.font = .systemFont(ofSize: 15, weight: .bold)
        cell.priceLabel.font = .systemFont(ofSize: 20, weight: .light)
        cell.seeNowButton.tag = uniform.cellNumber
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    @IBOutlet weak var uniformTableView: UITableView!
    
    @IBAction func toMove(_ sender: UIButton) {
        switch sender.tag {
        case 0: performSegue(withIdentifier: "france", sender: sender.tag)
        case 1: performSegue(withIdentifier: "tottenham", sender: sender.tag)
        default:
            fatalError()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uniformTableView.dataSource = self
        uniformTableView.delegate = self
    }
}

class UniformCell: UITableViewCell {
    @IBOutlet weak var uniformCell: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var uniformImage: UIImageView!
    @IBOutlet weak var seeNowButton: UIButton!
}

