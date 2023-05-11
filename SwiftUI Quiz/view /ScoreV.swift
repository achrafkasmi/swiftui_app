//
//  ScoreV.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 18/10/2022.
//

import SwiftUI
import CoreData

struct ScoreView: View {
    @State var sheet: Bool = false
    @State var scoreViewModel: ScoreViewModel
    var body: some View {
        var results: [Any] = []
        ZStack {
            colorisation.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("your score is:")
                    .font(.body)
                Text("\(scoreViewModel.percentage) %")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                    .opacity(0.6)
                Spacer()
                HStack {
                    Text("\(scoreViewModel.correctGuesses) ✅ ")
                    Text("\(scoreViewModel.incorrectGuesses) ❌ ")
                    HStack{
                        if(scoreViewModel.percentage >= 0 && scoreViewModel.percentage <= 20){
                            Text("\(scoreViewModel.percentage) ?! dude think in giving up with Swift hehe.")
                                .font(.body)
                        }else if(scoreViewModel.percentage > 20 && scoreViewModel.percentage <= 50){
                            Text("\(scoreViewModel.percentage) ! seems like you are in progress, keep up you need more work.")
                                .font(.body)
                        }else if(scoreViewModel.percentage > 50 && scoreViewModel.percentage <= 80){
                            Text("\(scoreViewModel.percentage) ! Great job keep up, you can do better.")
                                .font(.body)
                        }else if(scoreViewModel.percentage > 80 && scoreViewModel.percentage <= 100){
                            Text("\(scoreViewModel.percentage) ! how nice I am proud of you dude, hit next level.")
                                .font(.body)
                        }
                    }
                }
                    .font(.system(size: 28))
                Spacer()
                Button(action: {
                    results.removeAll()
                    var score = scoreViewModel.percentage
                    results.append("Hello! I passed the quiz, my current score is: \(score)% ")
                    sheet.toggle()
                }, label: {
                    HStack {
                        Text("Share")
                            .foregroundColor(.gray)
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.gray)
                    }
                })
                Spacer()
                NavigationLink(
                    destination: choiceOfLevel(),
                    label: {
                        BottomTextView(str: "Won't Give up")
                    })
                }
            .sheet(isPresented: $sheet, content: {
                ShareSheet(results: results)
            })
           }
        .navigationBarHidden(true)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(scoreViewModel: ScoreViewModel(correctGuesses: 5, incorrectGuesses: 3))
            //.foregroundColor(.init(white: 0.7))
    }
}


struct ShareSheet: UIViewControllerRepresentable {
    var results: [Any]
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIActivityViewController(activityItems: results, applicationActivities: nil)
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
}

