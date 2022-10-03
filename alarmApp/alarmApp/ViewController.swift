
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    var alarmTime: String = ""
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1초마다 updateTimer를 실행시키는 타이머
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        // selector는 함수를 고르는 역할을 하는 구조체이다.
    }
    
    @objc func updateTime() {
        
        let date = NSDate() // 상수 date에게 NSDate()라는 클래스를 선언한다. -> 현재 시간을 가져옴.
        // NSDate()는 날짜 객체를 생성한다.
        let formatter = DateFormatter() // 상수 formatter에게 DateFormatter()라는 클래스를 선언한다.
        formatter.dateFormat = "yyyy-MM-dd EEE hh:mm:ss" // DateFormatter()의 프로퍼티인 dateFormat으로 "연도 - 월 - 요일 - 시간 - 분 - 초" 를 정해준다.
        lblCurrentTime.text = "현재시간 : \(formatter.string(from: date as Date))"
        // .string 메서드를 이용하여 formatter의 타입을 String으로 변환시킨다.
        
        let currentTime = formatter.string(from: date as Date) // currentTime 선언. 시와 분을 모두 포함
        
        if alarmTime == currentTime {
            count += 1
            if count % 2 == 1 {
                view.backgroundColor = UIColor.brown
            } else {
                view.backgroundColor = UIColor.white
            }
        }
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) { // Date Picker의 동적 함수
        
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd EEE hh:mm"
        
        lblPickerTime.text = "설정시간 : \(formatter.string(from: datePickerView.date))"
        
        // 알람부분(설정시간부)
        
        alarmTime = formatter.string(from: datePickerView.date)
    }
}

