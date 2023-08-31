//
//  Question.swift
//  Quizzler
//
//  Created by Jo Michael on 8/29/23.
//

import Foundation

class Question {
    let question: String
    let answer: Bool
    
    init(question: String, answer: Bool) {
        self.question = question
        self.answer = answer
    }
}
