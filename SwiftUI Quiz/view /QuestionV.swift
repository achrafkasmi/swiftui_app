//
//  QuestionV.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 10/10/2022.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    var body: some View {
        Text(question.questionText)
            .foregroundColor(.black)
            .opacity(0.55)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
        Spacer()
        VStack {
            ForEach(question.possibleAnswers.indices, id: \.self) { index in
            Button(action: {
                print(question.possibleAnswers[index])
                viewModel.makeGuess(atIndex: index)
            }, label: {
                ChoiceTextView(choiceText: question.possibleAnswers[index])
                    .background(viewModel.color(forOptionIndex: index))
            })
            .disabled(viewModel.guessWasMade)
            }
            .padding(.bottom,10)
    }
        if viewModel.guessWasMade {
            Button(action: {
                viewModel.displayNextScreen()
            }, label: { BottomTextView(str: "Next question") })
            .background(.black.opacity(0.3))
            .frame(width: 350, height: 50)
            .cornerRadius(40)
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Question.allQuestions[0])
    }
}

