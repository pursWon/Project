import UIKit
import Foundation

struct StoryBrain {
    var storyNumber: Int = 0
    
    let wolfStory: [WolfStory] = [
        WolfStory(story: "당신은 과일을 사러 옆마을로 가기 위해 어두운 숲을 건너야 합니다. 건너시겠습니까?", choice1: "예", choice2: "아니오", choice1Destination: 2, choice2Destination: 1),
    
    WolfStory(story: "집으로 들어가려다가 당신은 곰을 마주쳤습니다", choice1: "You are", choice2: "Dead", choice1Destination: 0, choice2Destination: 0),
        
    WolfStory(story: "길을 걷다가 나무 뒤에서 이상한 시선을 느낀 당신. 뒤를 돌아보시겠습니까?", choice1: "뒤를 돌아본다", choice2: "그냥 가던 길을 간다", choice1Destination: 3, choice2Destination: 4),
        
    WolfStory(story: "나무 뒤에서 음흉하게 웃고 있는 늑대를 만났습니다", choice1: "You are", choice2: "Dead", choice1Destination: 0, choice2Destination: 0),
        
    WolfStory(story: "두 갈래 길이 나왔습니다. 어느 쪽으로 가시겠습니까?", choice1: "왼쪽", choice2: "오른쪽", choice1Destination: 5, choice2Destination: 14),
        
    WolfStory(story: "다시 두 갈래 길이 나왔습니다. 어느 쪽으로 가시겠습니까?", choice1: "왼쪽", choice2: "오른쪽", choice1Destination: 6, choice2Destination: 7),
        
    WolfStory(story: "노래를 부르며 놀던 늑대에게 물려서 사망하였습니다", choice1: "You are", choice2: "Dead" , choice1Destination: 0, choice2Destination: 0),
        
    WolfStory(story: "과일을 팔고 있는 늑대를 만났습니다. 과일을 사시겠습니까?", choice1: "예", choice2: "아니오", choice1Destination: 8, choice2Destination: 10),
        
    WolfStory(story: "과일을 파는 늑대의 호위를 받아 집앞에 도착하였습니다.", choice1: "늑대님, 감사합니다", choice2: "이만 가보겠습니다. 감사합니다 늑대님.", choice1Destination: 9, choice2Destination: 9),
        
    WolfStory(story: "저런.. 늑대를 끝까지 믿으셨군요. 당신은 저녁 메뉴가 되었습니다.", choice1: "You are", choice2: "Dead", choice1Destination: 0, choice2Destination: 0),
        
    WolfStory(story: "화난 늑대는 당신을 잡아먹으려 뛰쳐옵니다. 뛰어서 도망가시겠습니까?", choice1: "거북이", choice2: "토끼", choice1Destination: 11, choice2Destination: 12),
        
    WolfStory(story: "여유있게 걷던 당신을 쫓던 늑대는 돌부리에 넘어져 뇌진탕으로 사망하였습니다.", choice1: "늑대를 묻어주고 과일가게로 향한다" , choice2: "그냥 간다", choice1Destination: 13, choice2Destination: 13),
    
    WolfStory(story: "어리석게도 뛰다가 당신은 넘어졌습니다. 늑대의 굿디너가 되었습니다.", choice1: "You are", choice2: "Dead", choice1Destination: 0, choice2Destination: 0),
    
    WolfStory(story: "무사히 과일가게에 도착하였습니다.", choice1: "처음으로", choice2: "돌아가기", choice1Destination: 0, choice2Destination: 0),
        
    WolfStory(story: "과일가게 근처에 다다른 당신은 목이 마르던 찰나에 수상쩍은 우물을 발견했습니다. 물을 드시겠습니까?", choice1: "예", choice2: "아니오" , choice1Destination: 16, choice2Destination: 15),
    
    WolfStory(story: "몸의 필수요소인 물을 소중히 하지 않은 당신에게 화가 난 늑대가 당신을 잡아먹었습니다", choice1: "You are", choice2: "Dead", choice1Destination: 0, choice2Destination: 0),
        
    WolfStory(story: "갈증이 해소된 당신은 무사히 과일가게 도착하였습니다.", choice1: "처음으로", choice2: "돌아가기", choice1Destination: 0, choice2Destination: 0)
    ]
    
    func storyText() -> String {
        return wolfStory[storyNumber].story!
    }
    
    func choice1Text() -> String {
        return wolfStory[storyNumber].choice1!
    }
    
    func choice2Text() -> String {
        return wolfStory[storyNumber].choice2!
    }
    
    mutating func nextStory(userSelect: String) {
        let currentStory = wolfStory[storyNumber]
        
        if userSelect == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userSelect == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
}
