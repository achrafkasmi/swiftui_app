//
//  model.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 18/10/2022.
//

/*import Foundation

struct Game {
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question:Int]()
    private(set) var isOver = false
    
    private let questions = Question.allQuestions.shuffled()
    
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0,0)
        for (question, guessedIndex) in guesses {
            if guessedIndex == question.correctAnswerIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    var numberOfQuestions: Int {
        questions.count
    }
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    mutating func makeGuessForCurrentQuestion (atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    mutating func updateGameStatus() {
        if currentQuestionIndex < numberOfQuestions - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}*/
import Foundation

struct Game {
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question:Int]()
    private(set) var isOver = false
    
    private let questions = Question.allQuestions.shuffled()
    private var dataController = Datacontroller()
    
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0,0)
        for (question, guessedIndex) in guesses {
            if guessedIndex == question.correctAnswerIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    var numberOfQuestions: Int {
        questions.count
    }
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < numberOfQuestions - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
            let scoreViewModel = ScoreViewModel(correctGuesses: guessCount.correct, incorrectGuesses: guessCount.incorrect)
            dataController.updateProgressUsingScore(scoreViewModel: scoreViewModel)
        }
    }
}





