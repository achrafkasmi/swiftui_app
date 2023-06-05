//
//  levelChoice.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 31/10/2022.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        levelChoice()
    }
}
struct levelChoice: View {
    var body: some View {
        NavigationView {
            ZStack{
                colorisation.main.ignoresSafeArea()
                VStack{
                    Spacer()
                    NavigationLink(destination: choiceOfLevel(), label: {
                        TextShimmer(text: "let's kick the Quiz")
                            .font(.system(size: 45))
                            .fontWeight(.bold)
                    })
                    Spacer()
                    HStack{
                        NavigationLink(destination: choiceOfLevel(), label: {
                            TextShimmer(text:"Go")
                                .frame(width: 200, height: 55)
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                                .background(.black.opacity(0.3))
                                .cornerRadius(40)
                                
                        })
                    }
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
                    //.font(.system(size: 45))
                    //.fontWeight(.bold)
                    .foregroundColor(Color.white.opacity(0.25))
                HStack{
                    ForEach(0..<text.count, id: \.self) { index in
                        Text(String(text[text.index(text.startIndex, offsetBy: index)]))
                            .font(.system(size: 45))
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
}
struct levelChoice_Previews: PreviewProvider {
    static var previews: some View {
        levelChoice()
    }
}
