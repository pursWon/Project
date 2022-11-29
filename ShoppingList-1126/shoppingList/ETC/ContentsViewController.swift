import UIKit

class ContentsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: - UI
    @IBOutlet weak var contentsTableView: UITableView!
    @IBOutlet weak var titleTextField: UITextField!
    
    // MARK: - Properties
    var data: String = ""
    var unChecked: Bool = true
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    func configure() {
        titleTextField.placeholder = "제목을 입력하세요"
        contentsTableView.delegate = self
        contentsTableView.dataSource = self
        titleTextField.text = data
    }
    
    // MARK: - Actions
    @IBAction func checkButton(_ sender: UIButton) {
        if unChecked {
            sender.setImage(UIImage(systemName: "checkmark"), for: .normal)
            unChecked = false
        } else {
            sender.setImage(.none, for: .normal)
            unChecked = true
        }
    }
    
    @IBAction func plusButton(_ sender: UIBarButtonItem) {
        let indexPath = IndexPath(row: sender.tag, section: 0)
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        let text = titleTextField.text
        let newText: ShoppingList = ShoppingList(name: text ?? "")
        ShoppingList.shoppingList.append(newText)
        dismiss(animated: true)
    }
    
    // MARK: - TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = contentsTableView.dequeueReusableCell(withIdentifier: "ContentsCell", for: indexPath) as? ContentsCell else { return UITableViewCell() }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}


