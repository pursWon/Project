import Foundation

struct Student {
    var name: String
    var subject: String
    var grade: String
}

var names: [String] = []
var students: [Student] = [Student(name: "", subject: "", grade: "")]
var returnInput: String?

while returnInput != "progress" {
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    let input = readLine()!
switch input {
case "1":
    print("추가할 학생의 이름을 입력해주세요")
    returnInput = "progress"
    let nameAdd = readLine()!
    if nameAdd == "" {
    print("입력이 잘못되었습니다. 다시 확인해주세요.")
    returnInput = "return"
    } else if names.contains(nameAdd) {
    print("\(nameAdd)는 이미 존재하는 학생입니다. 추가하지 않습니다.")
    returnInput = "return"
    } else {
        names.append(nameAdd)
        print("\(nameAdd) 학생을 추가했습니다.")
    returnInput = "return"
    }
case "2":
    print("삭제할 학생의 이름을 입력해주세요")
    returnInput = "progress"
    let nameDelete = readLine()!
    if names.contains(nameDelete) == true {
        if let index = names.firstIndex(of: nameDelete) {
            names.remove(at: index)
            print("\(nameDelete) 학생을 삭제하였습니다.")
            returnInput = "return"
        }
    } else if names.contains(nameDelete) == false {
    print("\(nameDelete) 학생을 찾지 못했습니다.")
    returnInput = "return"
    }
case "3":
    print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F등)을 띄어쓰기로 구분하여 차례로 작성해주세요. 입력 예) Mickey Swift A+ 만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
    let gradeAdd = readLine()!.components(separatedBy: " ")
    if names.contains(gradeAdd.first!), gradeAdd.count == 3 {
        let information: Student = Student(name: gradeAdd.first!, subject: gradeAdd[1], grade: gradeAdd.last!)
        students.append(information)
        print("\(gradeAdd.first!) 학생의 \(gradeAdd[1]) 과목이 \(gradeAdd.last!)으로 추가(변경)되었습니다.")
        print(students)
        returnInput = "return"
    } else {
    print("입력이 잘못되었습니다. 다시 입력해주세요.")
    }
    returnInput = "return"
case "4":
    print("성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요. 성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요. 입력 예) Mickey Swift")
    returnInput = "progress"
    let gradeDelete = readLine()!.components(separatedBy: " ")
    if students.contains(where: { $0.name == gradeDelete.first! }), students.contains(where: { $0.subject == gradeDelete.last!}), gradeDelete.count == 2 {
        students.removeAll(where: { $0.subject == gradeDelete.last! })
        print("\(gradeDelete.first!) 학생의 \(gradeDelete.last!) 성적이 삭제되었습니다.")
        print(students)
        returnInput = "return"
    } else if students.contains(where: { $0.name == gradeDelete.first! }) == false, gradeDelete.count != 2  {
    print("\(gradeDelete.first!) 학생을 찾지 못했습니다.")
    returnInput = "return"
    } else if students.contains(where: { $0.name == gradeDelete.first! }) == false, gradeDelete.count == 2,  students.contains(where: { $0.subject == gradeDelete.last!}) {
    print("\(gradeDelete.first!) 학생을 찾지 못했습니다.")
    }
    
case "5":
    print("평점을 알고 싶은 학생의 이름을 입력해주세요.")
    returnInput = "progress"
    let name = readLine()!
    if students.contains(where: { $0.name == name }) {
    print(name)
    var subject: String = ""
    var grade: String = ""
    if let index = students.firstIndex(where: { $0.name == name }) {
            subject = students[index].subject
            grade = students[index].grade
        }
        print("\(subject) : \(grade)")
    }
case "X":
    returnInput = "progress"
    print("프로그램을 종료합니다...")
    exit(0)
default:
    print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
    returnInput = "return"
    }
}
