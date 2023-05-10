//
//  Score.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 06/10/2022.
//

import Foundation
//import SwiftUI

struct ScoreViewModel {

    let correctGuesses: Int
    let incorrectGuesses: Int
    var percentage: Int {
        100 * (correctGuesses)/(correctGuesses + incorrectGuesses)
    }
}
