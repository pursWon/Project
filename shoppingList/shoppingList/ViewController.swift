import UIKit

class tableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopping.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCell", for: indexPath) as? shoppingCell else { return UITableViewCell() }
       
        let shopping = shopping[indexPath.row]
        cell.titleLabel.text = shopping.name
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "listClick", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listClick" {
            if let vc = segue.destination as? contentsViewController {
                if let index = sender as? Int {
                    vc.data = shopping[index].name!
                }
            }
        }
    }
    
    @IBAction func listAddButton(_ sender: UIButton) {
    performSegue(withIdentifier: "listAdd", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
}

class shoppingCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
}

class contentsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopping.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = contentsTableView.dequeueReusableCell(withIdentifier: "contentsCell", for: indexPath) as? contentsCell else { return UITableViewCell() }
        let shopping = shopping[indexPath.row]
        
        return cell
    }
    
    @IBOutlet weak var contentsTableView: UITableView!
    @IBOutlet weak var titleTextField: UITextField!
    var data: String = ""
    
    override func viewDidLoad() {
        titleTextField.placeholder = "제목을 입력하세요"
        contentsTableView.delegate = self
        contentsTableView.dataSource = self
        titleTextField.text = data
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
    dismiss(animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
}

class contentsCell: UITableViewCell {
    @IBOutlet weak var contentsTextField: UITextField!
    
}

