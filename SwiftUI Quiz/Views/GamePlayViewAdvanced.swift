//
//  GamePlayViewAdvanced.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 26/5/2023.
//

import SwiftUI

struct GamePlayViewAdvanced: View {
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            colorisation.expert.ignoresSafeArea()
            VStack {
                ProgressBar(progress: viewModel.progress)
                    .frame(height: 10)
                    .animation(.linear)
                    .padding()
                Spacer()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
        .background(
            NavigationLink(destination: ScoreView(scoreViewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label: { EmptyView() })
        )
    }
}

struct GamePlayViewAdvanced_Previews: PreviewProvider {
    static var previews: some View {
        GamePlayViewAdvanced()
    }
}
