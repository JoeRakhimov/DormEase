//
//  TestViewModel.swift
//  DormEase
//
//  Created by Gayrat Rakhimov on 20/10/23.
//

import Foundation

class TestViewModel {
    
    var questions: [Question] = [
        Question(
            question: "Which urban environment do you prefer?",
            options: [
                Option(text: "large and lively city"),
                Option(text: "medium-sized cities"),
                Option(text: "small town or rural area")
            ]
        ),
        Question(
            question: "How much time are you willing to dedicate to commuting?",
            options: [
                Option(text: "15 minutes or less"),
                Option(text: "30-60 minutes"),
                Option(text: "more than an hour")
            ]
        ),
        Question(
            question: "What services or activities do you consider essential in your area of residence?",
            options: [
                Option(text: "schools"),
                Option(text: "supermarkets"),
                Option(text: "parks"),
                Option(text: "restaurants"),
            ]
        ),
    ]
    
}
