//
//  GamePlayView.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 18/10/2022.
//

import SwiftUI

/*struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            colorisation.main.ignoresSafeArea()
            VStack {
                /*Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.center)
                    .padding()*/
                ProgressBar(progress: viewModel.progress)
                    .frame(height: 10)
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
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        }
    }
}*/
/*struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    @State private var progress: CGFloat = 0.0 // Add a progress state variable
    
    var body: some View {
        ZStack {
            colorisation.main.ignoresSafeArea()
            VStack {
                ProgressBar(progress: $progress) // Pass the progress binding to the ProgressBar
                    .frame(height: 10)
                
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
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        }
    }
}*/
import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            colorisation.main.ignoresSafeArea()
            VStack {
                ProgressBar(progress: viewModel.progress)
                    .frame(height: 10)
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
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        }
    }
}
