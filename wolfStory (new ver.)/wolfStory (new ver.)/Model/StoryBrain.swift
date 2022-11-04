import Foundation

/// 🤔 : 이 `text`는 바깥에 선언한 이유가 뭔가요? 구조체나 클래스 밖에 선언한 변수는 의미가 없습니다.
var text: String = ""

struct StoryBrain {
    var storyNumber: Int = 0
    let wolfStoryList: [WolfStory] = [
        WolfStory(
            story: "당신은 과일을 사러 옆마을로 가기 위해 어두운 숲을 건너야 합니다. 건너시겠습니까?",
            choiceOne: ("예", 2), choiceTwo: ("아니오", 1)),
        WolfStory(
            story: "집으로 들어가려다가 당신은 곰을 마주쳤습니다"),
        WolfStory(
            story: "길을 걷다가 나무 뒤에서 이상한 시선을 느낀 당신. 뒤를 돌아보시겠습니까?",
            choiceOne: ("뒤를 돌아본다", 3), choiceTwo: ("그냥 가던 길을 간다", 4)),
        WolfStory(
            story: "나무 뒤에서 음흉하게 웃고 있는 늑대를 만났습니다"),
        WolfStory(
            story: "두 갈래 길이 나왔습니다. 어느 쪽으로 가시겠습니까?",
            choiceOne: ("왼쪽", 5), choiceTwo: ("오른쪽", 14)),
        WolfStory(
            story: "다시 두 갈래 길이 나왔습니다. 어느 쪽으로 가시겠습니까?",
            choiceOne: ("노래소리가 들려오는 곳", 6), choiceTwo: ("늑대소리가 들려오는 곳", 7)),
        WolfStory(
            story: "노래를 부르며 놀던 늑대에게 물려서 사망하였습니다"),
        WolfStory(
            story: "과일을 팔고 있는 늑대를 만났습니다. 과일을 사시겠습니까?",
            choiceOne: ("사..사겠습니다", 8), choiceTwo: ("아니요 !!!!", 10)),
        WolfStory(
            story: "과일을 파는 늑대의 호위를 받아 무사히 집앞에 도착하였습니다.",
            choiceOne: ("늑대님, 감사합니다", 9), choiceTwo: ("이만 가보겠습니다. 감사합니다 늑대님", 9)),
        WolfStory(
            story: "저런.. 늑대를 끝까지 믿으셨군요. 당신은 저녁 메뉴가 되었습니다."),
        WolfStory(
            story: "화난 늑대는 당신을 잡아먹으려 뛰쳐옵니다. 뛰어서 도망가시겠습니까?",
            choiceOne: ("거북이", 11), choiceTwo: ("토끼", 12)),
        WolfStory(
            story: "여유있게 걷던 당신을 쫓던 늑대는 돌부리에 넘어져 뇌진탕으로 사망하였습니다.",
            choiceOne: ("늑대를 묻어주고 과일가게로 향한다", 13), choiceTwo: ("그냥 간다", 13)),
        WolfStory(
            story: "어리석게도 뛰다가 당신은 넘어졌습니다. 늑대의 굿디너가 되었습니다."),
        WolfStory(
            story: "무사히 과일가게에 도착하였습니다.",
            choiceOne: ("처음으로",0), choiceTwo: ("돌아가기", 0)),
        WolfStory(
            story: "과일가게 근처에 다다른 당신은 목이 마르던 찰나에 수상쩍은 우물을 발견했습니다. 물을 드시겠습니까?",
            choiceOne: ("물을 먹자", 16), choiceTwo: ("물이 상했을 수도 있다 먹지 말자", 15)),
        WolfStory(
            story: "몸의 필수요소인 물을 소중히 하지 않은 당신에게 화가 난 늑대가 당신을 잡아먹었습니다"),
        WolfStory(
            story: "갈증이 해소된 당신은 무사히 과일가게 도착하였습니다.",
            choiceOne: ("처음으로", 0), choiceTwo: ("돌아가기", 0))
    ]
    
    func storyText() -> String {
        return wolfStoryList[storyNumber].story
    }
    
    func choice1Text() -> String {
        return wolfStoryList[storyNumber].choiceOne.0 ?? "하하"
    }
    
    func choice2Text() -> String {
        return wolfStoryList[storyNumber].choiceTwo.0 ?? "하하"
    }
    
    mutating func nextStory(userSelect: String) {
        let currentStory = wolfStoryList[storyNumber]
        
        if userSelect == currentStory.choiceOne.0 {
            storyNumber = currentStory.choiceOne.1!
        } else if userSelect == currentStory.choiceTwo.0 {
            storyNumber = currentStory.choiceTwo.1!
        }
    }
    
    mutating func dead(userChoice: String) -> String {
        if userChoice == wolfStoryList[0].choiceTwo.0 {
            text = wolfStoryList[1].story // "집으로 들어가려다가 당신은 곰을 마주쳤습니다"
        } else if userChoice == wolfStoryList[2].choiceOne.0 {
            text = wolfStoryList[3].story // "나무 뒤에서 음흉하게 웃고 있는 늑대를 만났습니다"
        } else if userChoice == wolfStoryList[5].choiceOne.0 {
            text = wolfStoryList[6].story // "노래를 부르며 놀던 늑대에게 물려서 사망하였습니다"
        } else if userChoice == wolfStoryList[8].choiceOne.0 {
            text = wolfStoryList[9].story // "저런.. 늑대를 끝까지 믿으셨군요. 당신은 저녁 메뉴가 되었습니다."
        } else if userChoice == wolfStoryList[8].choiceTwo.0 {
            text = wolfStoryList[9].story // "저런.. 늑대를 끝까지 믿으셨군요. 당신은 저녁 메뉴가 되었습니다."
        } else if userChoice == wolfStoryList[10].choiceTwo.0 {
            text = wolfStoryList[12].story
        } else if userChoice == wolfStoryList[14].choiceTwo.0{
            text = wolfStoryList[15].story
        }
        
        return text
    }
}

