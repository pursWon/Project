import UIKit


class DetailViewController: UIViewController {
    // MARK: - UI
    @IBOutlet weak var listNameTextField: UITextField!
    @IBOutlet weak var itemNameTextField: UITextField!
    @IBOutlet weak var itemDeleteButton: UIButton!
    @IBOutlet weak var listDeleteButton: UIButton!
    
    // MARK: - Properties
    var listName: String?
    var itemName: String?
    var buttonIsEnabled: Bool?
    var index: (section: Int, row: Int)? // (section, row)
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        listNameTextField.text = listName
        itemNameTextField.text = itemName
        itemDeleteButton.isEnabled = buttonIsEnabled!
        listDeleteButton.isEnabled = buttonIsEnabled!
    }
    
    // MARK: - Actions
    @IBAction func saveButton(_ sender: UIButton) {
        let listName = listNameTextField.text!
        let itemName = itemNameTextField.text!
        
        if !listName.isEmpty && !itemName.isEmpty {
            
            if let index = index {
                ShoppingList.shoppingList[index.section].name = listName
                ShoppingList.shoppingList[index.section].list[index.row] = itemName
            } else {
                let listAdd = ShoppingList(name: listName, list: [itemName])
                ShoppingList.shoppingList.append(listAdd)
            }
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func listDeleteButton(_ sender: UIButton) {
        let listName = listNameTextField.text!
        let itemName = itemNameTextField.text!
        let sendedListName = ShoppingList.shoppingList[index!.section].name
        if !listName.isEmpty && !itemName.isEmpty && sendedListName == listName {
        ShoppingList.shoppingList.removeAll { $0.name == sendedListName }
        self.navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func itemDeleteButton(_ sender: UIButton) {
        let listName = listNameTextField.text!
        let itemName = itemNameTextField.text!
        let sendedListName = ShoppingList.shoppingList[index!.section].name
        let sendedItemName = ShoppingList.shoppingList[index!.section].list[index!.row]
        if !listName.isEmpty && !itemName.isEmpty && sendedListName == listName && sendedItemName == itemName {
        ShoppingList.shoppingList[index!.section].list.removeAll { $0 == sendedItemName }
        self.navigationController?.popViewController(animated: true)
        }
    }
}
