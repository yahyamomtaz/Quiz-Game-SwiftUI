//
//  ScoreViewModel.swift
//  Questions
//
//  Created by Yahya Momtaz on 06/02/23.
//

import Foundation
struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
