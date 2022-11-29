import UIKit

class SelectedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: - UI
    @IBOutlet weak var selectedTableView: UITableView!
    @IBOutlet weak var titleTextField: UITextField!
    
    // MARK: - Properties
    var data: String = ""
    var unChecked: Bool = true
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedTableView.dataSource = self
        selectedTableView.delegate = self
        titleTextField.text = data
    }
    
    // MARK: - Actions
    @IBAction func saveButton(_ sender: UIButton) {

    }
    
    @IBAction func checkButton(_ sender: UIButton) {
        if unChecked  {
            sender.setImage(UIImage(systemName: "checkmark"), for: .normal)
            unChecked = false
        } else {
            sender.setImage(UIImage(), for: .normal)
            unChecked = true
        }
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    // MARK: - TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return memo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SelectedCell", for: indexPath) as? SelectedCell else { return UITableViewCell() }
        cell.contentsTextField.text = memo[indexPath.row].content
        
        return cell
    }
}
