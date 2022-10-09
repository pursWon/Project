
import UIKit

class MemoListTableViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) { // 해당 메소드는 뷰컨트롤러가 관리하는 뷰가 화면에 표시되기 직전에 자동으로
        // 호출을 시켜주는 역할을 한다.
        super.viewWillAppear(animated)
        
        tableView.reloadData() // 테이블뷰의 데이터 목록을 업데이트 하라고 알려준다. 데이터 소스가 전해주는 최신 데이터로 업데이트 하게 된다.
        print(#function) // 해당 기능이 잘 이루어졌는지 출력함으로써 확인할 수 있다.
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell, let indexPath =
            tableView.indexPath(for: cell) {
            if let vc = segue.destination as? DetailViewController {
                vc.memo = Memo.dummyMemoList[indexPath.row]
            }
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Memo.dummyMemoList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let target = Memo.dummyMemoList[indexPath.row]
        cell.textLabel?.text = target.content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }


}
