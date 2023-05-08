//
//  Choice.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 18/10/2022.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.leading)
            .padding()
            .border(colorisation.accent, width: 2)
            .opacity(0.55)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "2022")
    }
}
