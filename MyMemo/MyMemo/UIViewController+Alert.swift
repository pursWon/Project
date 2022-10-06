
import UIKit

// UIViewController를 상속하는 모든 클래스에서 우리가 구현하는 메소드들을 사용할 수 있도록 extension으로 추가한다.

extension UIViewController {
    func alert(title: String = "알림", message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert) // 경고창을 사용할 때에는 UIAlertController를 사용한다.
        // 첫번째 파라미터는 경고차의 제목을 전달하고, 두번째 파라미터는 경고창에 표시할 메세지를 전달한다.
        // 세번째 파라미터는 경고창의 스타일을 정할 수 있다.
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        // 경고창에 표시되는 버튼을 생성
        // 첫번째 파라미터는 제목을 전달, 두번째 파라미터는 스타일을 지정, 세번째 파라미터는 버튼을 눌렀을 때 실행되는 코드.
        
        alert.addAction(okAction)
        // 이렇게 생성한 버튼을 alertController에 추가해야 한다.
        
        present(alert, animated: true, completion: nil)
        // 만든 경고창을 화면에 띄워준다.
    }
}
