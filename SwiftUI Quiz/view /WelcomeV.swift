//
//  WelcomeV.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 02/10/2022.
//

/*import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

 struct Home: View {
      var body: some View {
        NavigationView {
        ZStack{
                colorisation.main.ignoresSafeArea()
                VStack(spacing: 15){
                    Spacer()
                    TextShimmer(text: "let's kick the Quiz")
                    Spacer()
                    Spacer()
                    NavigationLink(destination: GameView(), label: {
                        BottomTextView(str: "Let's Go")
                    })
                    .padding(.bottom,20)
                }
            }
        }
    }
    public struct TextShimmer: View {
        
        var text: String
        @State var animation = false
        
        var body: some View {
            ZStack{
                Text(text)
                    .font(.system(size: 45))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white.opacity(0.25))
                HStack{
                    ForEach(0..<text.count, id: \.self) { index in
                        Text(String(text[text.index(text.startIndex, offsetBy: index)]))
                            .font(.system(size: 45))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
                .mask(
                    Rectangle()
                        .rotationEffect(.init(degrees: 70))
                        .padding(20)
                        .offset(x: -250)
                        .offset(x: animation ? 500 : 0)
                    
                )
                .onAppear(perform: {
                    withAnimation(
                        Animation.linear(duration: 0.46).repeatCount(1)) {
                            animation.toggle()
                        }
                })
            }
        }
    }
}*/
