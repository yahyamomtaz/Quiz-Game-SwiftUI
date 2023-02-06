//
//  Game.swift
//  Questions
//
//  Created by Yahya Momtaz on 24/01/23.
//

import Foundation
struct Game {
    private let questions = Question.allQuestions.shuffled()
    private(set) var guesses = [Question:Int]()
    private(set) var currentQuestionIndex = 0
    private(set) var isOver = false
    
    mutating func makeGuessForCurrentQuestion(atIndex index:Int) {
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
    
    var numberOfQuestions:Int {
        questions.count
    }
    
    var currentQuestion:Question {
        questions[currentQuestionIndex]
    }
    
    var guessCount:(correct:Int, incorrect:Int) {
        var count: (correct: Int, incorrect: Int) = (0,0)
        for (question,guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
}
