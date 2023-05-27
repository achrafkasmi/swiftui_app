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
    static let medium = LinearGradient(gradient: Gradient(colors: [Color(hue: 40/360, saturation: 1.0, brightness: 0.8),Color(hue: 20/360, saturation:1.0, brightness: 0.8)]),startPoint: .leading,endPoint: .trailing)
    static let expert = LinearGradient(gradient: Gradient(colors: [Color(red: 0.6, green: 0.6, blue: 0.6),Color(red: 0.8, green: 0.2, blue: 0.2)]),
        startPoint: .topLeading,endPoint: .bottomTrailing)
}
