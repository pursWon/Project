import Foundation

/// π€ : μ΄ `text`λ λ°κΉ₯μ μ μΈν μ΄μ κ° λ­κ°μ? κ΅¬μ‘°μ²΄λ ν΄λμ€ λ°μ μ μΈν λ³μλ μλ―Έκ° μμ΅λλ€.

struct StoryBrain {
    static var text: String = ""
    var storyNumber: Int = 0
    let wolfStoryList: [WolfStory] = [
        WolfStory(
            story: "λΉμ μ κ³ΌμΌμ μ¬λ¬ μλ§μλ‘ κ°κΈ° μν΄ μ΄λμ΄ μ²μ κ±΄λμΌ ν©λλ€. κ±΄λμκ² μ΅λκΉ?",
            choiceOne: ("μ", 2), choiceTwo: ("μλμ€", 1)),
        WolfStory(
            story: "μ§μΌλ‘ λ€μ΄κ°λ €λ€κ° λΉμ μ κ³°μ λ§μ£Όμ³€μ΅λλ€"),
        WolfStory(
            story: "κΈΈμ κ±·λ€κ° λλ¬΄ λ€μμ μ΄μν μμ μ λλ λΉμ . λ€λ₯Ό λμλ³΄μκ² μ΅λκΉ?",
            choiceOne: ("λ€λ₯Ό λμλ³Έλ€", 3), choiceTwo: ("κ·Έλ₯ κ°λ κΈΈμ κ°λ€", 4)),
        WolfStory(
            story: "λλ¬΄ λ€μμ μννκ² μκ³  μλ λλλ₯Ό λ§λ¬μ΅λλ€"),
        WolfStory(
            story: "λ κ°λ κΈΈμ΄ λμμ΅λλ€. μ΄λ μͺ½μΌλ‘ κ°μκ² μ΅λκΉ?",
            choiceOne: ("μΌμͺ½", 5), choiceTwo: ("μ€λ₯Έμͺ½", 14)),
        WolfStory(
            story: "λ€μ λ κ°λ κΈΈμ΄ λμμ΅λλ€. μ΄λ μͺ½μΌλ‘ κ°μκ² μ΅λκΉ?",
            choiceOne: ("λΈλμλ¦¬κ° λ€λ €μ€λ κ³³", 6), choiceTwo: ("λλμλ¦¬κ° λ€λ €μ€λ κ³³", 7)),
        WolfStory(
            story: "λΈλλ₯Ό λΆλ₯΄λ©° λλ λλμκ² λ¬Όλ €μ μ¬λ§νμμ΅λλ€"),
        WolfStory(
            story: "κ³ΌμΌμ νκ³  μλ λλλ₯Ό λ§λ¬μ΅λλ€. κ³ΌμΌμ μ¬μκ² μ΅λκΉ?",
            choiceOne: ("μ¬..μ¬κ² μ΅λλ€", 8), choiceTwo: ("μλμ !!!!", 10)),
        WolfStory(
            story: "κ³ΌμΌμ νλ λλμ νΈμλ₯Ό λ°μ λ¬΄μ¬ν μ§μμ λμ°©νμμ΅λλ€.",
            choiceOne: ("λλλ, κ°μ¬ν©λλ€", 9), choiceTwo: ("μ΄λ§ κ°λ³΄κ² μ΅λλ€. κ°μ¬ν©λλ€ λλλ", 9)),
        WolfStory(
            story: "μ λ°.. λλλ₯Ό λκΉμ§ λ―ΏμΌμ¨κ΅°μ. λΉμ μ μ λ λ©λ΄κ° λμμ΅λλ€."),
        WolfStory(
            story: "νλ λλλ λΉμ μ μ‘μλ¨ΉμΌλ € λ°μ³μ΅λλ€. λ°μ΄μ λλ§κ°μκ² μ΅λκΉ?",
            choiceOne: ("κ±°λΆμ΄", 11), choiceTwo: ("ν λΌ", 12)),
        WolfStory(
            story: "μ¬μ μκ² κ±·λ λΉμ μ μ«λ λλλ λλΆλ¦¬μ λμ΄μ Έ λμ§νμΌλ‘ μ¬λ§νμμ΅λλ€.",
            choiceOne: ("λλλ₯Ό λ¬»μ΄μ£Όκ³  κ³ΌμΌκ°κ²λ‘ ν₯νλ€", 13), choiceTwo: ("κ·Έλ₯ κ°λ€", 13)),
        WolfStory(
            story: "μ΄λ¦¬μκ²λ λ°λ€κ° λΉμ μ λμ΄μ‘μ΅λλ€. λλμ κ΅Ώλλκ° λμμ΅λλ€."),
        WolfStory(
            story: "λ¬΄μ¬ν κ³ΌμΌκ°κ²μ λμ°©νμμ΅λλ€.",
            choiceOne: ("μ²μμΌλ‘",0), choiceTwo: ("λμκ°κΈ°", 0)),
        WolfStory(
            story: "κ³ΌμΌκ°κ² κ·Όμ²μ λ€λ€λ₯Έ λΉμ μ λͺ©μ΄ λ§λ₯΄λ μ°°λμ μμμ©μ μ°λ¬Όμ λ°κ²¬νμ΅λλ€. λ¬Όμ λμκ² μ΅λκΉ?",
            choiceOne: ("λ¬Όμ λ¨Ήμ", 16), choiceTwo: ("λ¬Όμ΄ μνμ μλ μλ€ λ¨Ήμ§ λ§μ", 15)),
        WolfStory(
            story: "λͺΈμ νμμμμΈ λ¬Όμ μμ€ν νμ§ μμ λΉμ μκ² νκ° λ λλκ° λΉμ μ μ‘μλ¨Ήμμ΅λλ€"),
        WolfStory(
            story: "κ°μ¦μ΄ ν΄μλ λΉμ μ λ¬΄μ¬ν κ³ΌμΌκ°κ² λμ°©νμμ΅λλ€.",
            choiceOne: ("μ²μμΌλ‘", 0), choiceTwo: ("λμκ°κΈ°", 0))
    ]
    
    func storyText() -> String {
        return wolfStoryList[storyNumber].story
    }
    
    func choice1Text() -> String {
        return wolfStoryList[storyNumber].choiceOne.0 ?? "νν"
    }
    
    func choice2Text() -> String {
        return wolfStoryList[storyNumber].choiceTwo.0 ?? "νν"
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
            text = wolfStoryList[1].story // "μ§μΌλ‘ λ€μ΄κ°λ €λ€κ° λΉμ μ κ³°μ λ§μ£Όμ³€μ΅λλ€"
        } else if userChoice == wolfStoryList[2].choiceOne.0 {
            text = wolfStoryList[3].story // "λλ¬΄ λ€μμ μννκ² μκ³  μλ λλλ₯Ό λ§λ¬μ΅λλ€"
        } else if userChoice == wolfStoryList[5].choiceOne.0 {
            text = wolfStoryList[6].story // "λΈλλ₯Ό λΆλ₯΄λ©° λλ λλμκ² λ¬Όλ €μ μ¬λ§νμμ΅λλ€"
        } else if userChoice == wolfStoryList[8].choiceOne.0 {
            text = wolfStoryList[9].story // "μ λ°.. λλλ₯Ό λκΉμ§ λ―ΏμΌμ¨κ΅°μ. λΉμ μ μ λ λ©λ΄κ° λμμ΅λλ€."
        } else if userChoice == wolfStoryList[8].choiceTwo.0 {
            text = wolfStoryList[9].story // "μ λ°.. λλλ₯Ό λκΉμ§ λ―ΏμΌμ¨κ΅°μ. λΉμ μ μ λ λ©λ΄κ° λμμ΅λλ€."
        } else if userChoice == wolfStoryList[10].choiceTwo.0 {
            text = wolfStoryList[12].story
        } else if userChoice == wolfStoryList[14].choiceTwo.0{
            text = wolfStoryList[15].story
        }
        
        return text
    }
}

