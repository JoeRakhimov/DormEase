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
    var options: [Option]
    
    
}
