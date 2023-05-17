//
//  GameV_M.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 18/10/2022.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    @Published private var game = Game()
    
    var currentQuestion: Question {
        game.currentQuestion
    }
   var questionProgressText: String {
      "\(game.currentQuestionIndex + 1) /\(game.numberOfQuestions)"
    }
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    var gameIsOver: Bool {
        game.isOver
    }
    var correctGuesses: Int {
        game.guessCount.correct
    }
    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    func displayNextScreen() {
        game.updateGameStatus()
    }
    func color (forOptionIndex optionIndex: Int) -> Color {
        if optionIndex == game.guesses[currentQuestion] {
            if optionIndex == game.currentQuestion.correctAnswerIndex {
                return colorisation.correctGuess
            } else {
                return colorisation.incorrectGuess
            }
        } else {
            return colorisation.accent
        }
    }
}

