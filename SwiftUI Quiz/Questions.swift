//
//  Questions.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 20/10/2022.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "when an object contains another, we talk about _____?", possibleAnswers: ["aggregation","interaction","inheritance"], correctAnswerIndex: 0),
        Question(questionText: "swift is native language for ?", possibleAnswers: ["Apple iOs","Android"], correctAnswerIndex: 0),
        Question(questionText: "in a relation of inheritance. the parent classe is a _____.", possibleAnswers: ["ancestor","upper class","super class"], correctAnswerIndex: 2),
        Question(questionText: "inheritance is likely _____.", possibleAnswers: ["descending","ascending","forced"], correctAnswerIndex: 0),
        Question(questionText: "var number: Int = 10 is a initialisation of a variable named _____.", possibleAnswers: ["int","10","number"], correctAnswerIndex: 2),
        Question(questionText: "let number: Int = 10 can be changed.", possibleAnswers: ["true","false"], correctAnswerIndex: 1),
        Question(questionText: "Swift infers the type of variable, so you don't always have to declare variable type. let pi = 3.14 so pi is a Double", possibleAnswers: ["true","false"], correctAnswerIndex: 0),
        Question(questionText: "variables can contain most unicode characters ex  var ❤️: String = 'heart'", possibleAnswers: ["true","false"], correctAnswerIndex: 0),
        Question(questionText: "Lazy stored properties have values that are not calculated until first accessed.", possibleAnswers: ["true","false"], correctAnswerIndex: 0),
        Question(questionText: "func hello() {let hello = ''something''} , hello is a _____ variable", possibleAnswers: ["global","not a","local"], correctAnswerIndex: 2),
        Question(questionText: "let R = arc4random_uniform (6) + 1 let us randomise R between _____.", possibleAnswers: ["1 and 5","1 and 6","1 and 7"], correctAnswerIndex: 1),
        Question(questionText: "print(!true) prints what is: _____", possibleAnswers: ["true ","false","error"], correctAnswerIndex: 1),
        Question(questionText: "argsFunc({}) this function has how many argument ?", possibleAnswers: [" zero arg ","this is not a function","one argument"], correctAnswerIndex: 2),
        Question(questionText: "getLastElem([‘Alex’, ‘noah’, ‘Emily’]) ➞‘_____’", possibleAnswers: ["emely","noah","Emely"], correctAnswerIndex: 2),
        Question(questionText: "isSameCase(''LearnSwift'') ➞ _____"
                 , possibleAnswers: ["true","false"], correctAnswerIndex: 1),
        Question(questionText: "existance verification : nbrExist([6, 7, 8], 7) ➞ _____ "
                 , possibleAnswers: ["true","false"], correctAnswerIndex: 0),
        Question(questionText: "getMin([-1, 0]) ➞ _____", possibleAnswers: ["error","0","-1"], correctAnswerIndex: 2),
    ]
}
