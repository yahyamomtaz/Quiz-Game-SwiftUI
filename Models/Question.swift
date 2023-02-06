//
//  Question.swift
//  Questions
//
//  Created by Yahya Momtaz on 20/01/23.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    
    static var allQuestions = [
        Question(questionText:"Who invented the world wide web?",
                 possibleAnswers: ["Steve Jobs",
                                   "Linus Torvalds",
                                   "Bill Gates",
                                   "Tim Berners-Lee"],
                 correctAnswerIndex: 3),
        
        Question(questionText: "What was the first object oriented programming language?",
                 possibleAnswers: ["Simula",
                                   "Python",
                                   "Swift",
                                   "C"],
                 correctAnswerIndex: 0)
    ]
}
