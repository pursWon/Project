import UIKit

/*
 1. DetailVC에 튜플 타입의 index를 넘겨준다.
 2. index가 존재하면 "수정", 없으면 "추가"인 점을 활용하여, if문을 분기처리 해준다.
 3. ShoppingList.shoppingList[indexPath.section].list[indexPath.row]로 접근하면 itemName을 가져올 수 있다.
 4. 거기에 수행하고자 하는 값을 대변해주면 된다.
 5. 추가할 때는 shoppingList 타입 객체를 생성해서 shoppingList.shoppingList 배열에 추가한다.
 6. 작업을 다 끝나면 화면을 pop 해준다.
 */

class ShoppingListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: - UI
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func configure() {
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    // MARK: - Actions
    
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailVC") as? DetailViewController else { return }
        vc.title = "추가하기"
        vc.buttonIsEnabled = false
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - TableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return ShoppingList.shoppingList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ShoppingList.shoppingList[section].name
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ShoppingList.shoppingList[section].list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingCell", for: indexPath) as? ShoppingCell else { return UITableViewCell() }
        
        let item = ShoppingList.shoppingList[indexPath.section].list[indexPath.row]
        cell.titleLabel.text = item 
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          
          guard let vc = storyboard?.instantiateViewController(withIdentifier: "detailVC") as? DetailViewController else { return }
          let shoppingItem = ShoppingList.shoppingList[indexPath.section]
          vc.title = "수정하기"
          vc.buttonIsEnabled = true
          vc.listName = shoppingItem.name
          vc.itemName = shoppingItem.list[indexPath.row]
          vc.index = (section: indexPath.section, row : indexPath.row)
          self.navigationController?.pushViewController(vc, animated: true)
    }
}
