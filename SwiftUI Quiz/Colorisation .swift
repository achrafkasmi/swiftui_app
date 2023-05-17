//
//  Colorisation .swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 08/10/2022.
//

import SwiftUI

struct colorisation {
    static let main = LinearGradient(gradient: Gradient(colors: [Color.gray, Color(.sRGB, red: 20/255, green: 59/255, blue: 61/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let accent = Color(.sRGB, red: 20/255, green: 59/255, blue: 61/255).opacity(0)//102, 51, 153
    static let incorrectGuess = Color.red
    static let correctGuess = Color.green
    static let progress1 = Color(.yellow)
    static let progress2 = Color(.systemPink)
}
