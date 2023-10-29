//
//  Question.swift
//  DormEase
//
//  Created by Gayrat Rakhimov on 20/10/23.
//

import Foundation

struct Question: Identifiable {
    
    var id: UUID = UUID()
    
    var question: String
    var minValue: String
    var maxValue: String
    var ie = 0 // extroverted (E) or introverted (I).
    var sn = 0 // intuitive (N) or sensing (S)
    var ft = 0 // thinking (T) or feeling (F)
    var jp = 0 // perceiving (P) or judging (J)
    
}
