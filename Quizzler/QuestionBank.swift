//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Jo Michael on 8/29/23.
//

import Foundation

class QuestionBank {
    
    public private(set) var list = [Question]()
    
    init() {
        let item = Question(question: "New Zealand was the first country to give women the right to vote", answer: true)
        list.append(item)
        
        list.append(Question(question: "The United Kingdom is almost the same size as France", answer: false))
        
        list.append(Question(question: "Zeus is referred to as the king of the Greek gods and goddesses.", answer: true))
        
        list.append(Question(question: "Elephants are the biggest mammals in the world.", answer: false))
        
        list.append(Question(question: "In the famous novel of the same name, Frankenstein is a monster constructed from body parts.", answer: false))
        
        list.append(Question(question: "The tiniest bones in the human body are found in the hand", answer: false))
        
        list.append(Question(question: "The African elephant is the largest carnivore on land.", answer: false))
        
        list.append(Question(question: "The deadliest weapon of World War I was the machine gun", answer: true))
        
        list.append(Question(question: "Chlorophyll is responsible for green color in plants.", answer: true))
        
        list.append(Question(question: "The Empire State Building is taller than the Golden Gate Bridge", answer: true))
        
        list.append(Question(question: "The Leaning Tower of Pisa is taller than the the United States Capitol", answer: false))
        
        list.append(Question(question: "Burj Khalifa (the world’s tallest building) is taller than Angel Falls (world’s highest waterfall)", answer: false))
        
        list.append(Question(question: "The White House is taller than Buckingham Palace", answer: false))
        
        list.append(Question(question: "The crossbar of an American football(Handegg) goal post is shorter than the crossbar of a football goal", answer: false))
    }
    
    func numberOfQuestion() -> Int {
        return list.count
    }
    
    func getRandomQuestion() -> [Question] {
        return list.shuffled()
    }
}
