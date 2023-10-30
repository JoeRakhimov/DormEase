//
//  TestViewModel.swift
//  DormEase
//
//  Created by Gayrat Rakhimov on 20/10/23.
//

import Foundation

class TestViewModel: ObservableObject {
    
    @Published private(set) var length: Int
    @Published private(set) var index: Int
    @Published private(set) var progress: CGFloat = 0.00
    @Published private(set) var question: String
    @Published private(set) var options: [Option]
    @Published private(set) var optionSelected: Bool
    @Published private(set) var reachedEnd: Bool
    @Published private(set) var result = "ESTJ"
    
    private(set) var selectedOption: Option?
    
    var questions: [Question] = [
        Question( // 1
            question: "Which describes you more: makes lists or relies on memory?",
            minValue: "makes lists",
            maxValue: "relies on memory",
            jp: 1
        ),
        Question( // 2
            question: "sceptical - wants to believe",
            minValue: "sceptical",
            maxValue: "wants to believe",
            ft: -1
        ),
        Question( // 3
            question: "bored by time alone - needs time alone",
            minValue: "bored by time alone",
            maxValue: "needs time alone",
            ie: -1
        ),
        Question( // 4
            question: "accepts things as they are - ",
            minValue: "accepts things as they are",
            maxValue: "unsatisfied with the ways things are",
            sn: 1
        ),
        Question( // 5
            question: "keeps a clean room - just puts stuff where ever",
            minValue: "keeps a clean room",
            maxValue: "just puts stuff where ever",
            jp: 1
        ),
        Question( // 6
            question: "thinks “robotic” is an insult - strives to have a mechanical mind",
            minValue: "thinks “robotic” is an insult",
            maxValue: "strives to have a mechanical mind",
            ft: 1
        ),
        Question( // 7
            question: "energetic - mellow",
            minValue: "energetic",
            maxValue: "mellow",
            ie: -1
        ),
        Question( // 8
            question: "prefer to take multiple choice test - prefer essay answers",
            minValue: "prefer to take multiple choice test",
            maxValue: "prefer essay answers",
            sn: 1
        ),
        Question( // 9
            question: "works best in groups - work best alone",
            minValue: "works best in groups",
            maxValue: "work best alone",
            ie: -1
        ),
        Question( // 10
            question: "focused on the present - focused on the future",
            minValue: "focused on the present",
            maxValue: "focused on the future",
            sn: 1
        ),
        Question( // 11
            question: "plans for ahead - plans at the last minute",
            minValue: "plans for ahead",
            maxValue: "plans at the last minute",
            jp: 1
        ),
        Question( // 12
            question: "wants people’s respect - wants their love",
            minValue: "wants people’s respect",
            maxValue: "wants their love",
            ft: -1
        ),
        Question( // 13
            question: "wants to be good at fixing things - wants to be good at fixing people",
            minValue: "wants to be good at fixing things",
            maxValue: "wants to be good at fixing people",
            ft: -1
        ),
        Question( // 14
            question: "stays at home - goes out on the town",
            minValue: "stays at home",
            maxValue: "goes out on the town",
            ie: 1
        ),
        Question( // 15
            question: "wants the big picture - wants the details",
            minValue: "wants the big picture",
            maxValue: "wants the details",
            sn: -1
        ),
        Question( // 16
            question: "improvises - prepares",
            minValue: "improvises",
            maxValue: "prepares",
            jp: -1
        )
    ]
    
    var totalIE = 15 // IE = 15 - Q3 - Q7 - Q9 + Q14, if IE is more than 12, you are extroverted (E), otherwise you are introverted (I)
    var totalSN = 6 // SN = 6 + Q4 + Q8 + Q10 - Q15, if SN is more than 12, you are intuitive (N), otherwise you are sensing (S)
    var totalFT = 15 // FT = 15 - Q2 + Q6 - Q12 - Q13, If FT is more than 12, you are thinking (T), otherwise you are feeling (F)
    var totalJP = 9 // JP = 9 + Q1 + Q5 + Q11 - Q16, if JP is more than 12, you are JP.

    
    init() {
        self.length = questions.count
        self.index = 0
        self.progress = 0.00
        self.question = ""
        self.options = []
        self.optionSelected = false
        self.reachedEnd = false
        self.setQuestion()
    }
    
    func setQuestion() {
        if index < length {
            optionSelected = false
            question = "Which describes you more?"
            setOptions()
        }
    }
    
    fileprivate func setOptions() {
        options = [
            Option(text: "\(questions[index].minValue)", value: 1),
            Option(text: "closer to '\(questions[index].minValue)'", value: 2),
            Option(text: "somewhere in between", value: 3),
            Option(text: "closer to '\(questions[index].maxValue)'", value: 4),
            Option(text: "\(questions[index].maxValue)", value: 5)
        ]
    }
    
    func selectOption(option: Option) {
        optionSelected = true
        selectedOption = option
    }
    
    func goToNextQuestion() {
        
        if !reachedEnd{
            calculate()
        }
        
        if index + 1 < length {
            index += 1
            setQuestion()
        } else {
            reachedEnd = true
        }
    }
    
    fileprivate func calculate() {
        progress = CGFloat(Double((index+1)) / Double(length) * 350)
        if let option = self.selectedOption {
            totalIE = totalIE + questions[index].ie * option.value
            totalSN = totalSN + questions[index].sn * option.value
            totalFT = totalFT + questions[index].ft * option.value
            totalJP = totalJP + questions[index].jp * option.value
            result = "\(totalIE <= 12 ? "I":"E")\(totalSN <= 12 ? "S":"N")\(totalFT <= 12 ? "F":"T")\(totalJP <= 12 ? "J":"P")"
        }
    }
    
}
