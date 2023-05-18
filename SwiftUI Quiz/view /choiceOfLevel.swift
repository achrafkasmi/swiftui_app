//
//  choiceOfLevel.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 31/10/2022.
//



import Foundation
import SwiftUI

struct choiceOfLevel: View {
    var body: some View {
        NavigationView {
            ZStack{
                colorisation.main.ignoresSafeArea()
                HStack{
                    VStack{
                        NavigationLink(destination: GameView(), label: {
                            Text("beginner")
                                .foregroundColor(.gray)
                                .frame(width: 200, height: 55)
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                                .background(.black.opacity(0.3))
                                .cornerRadius(40)
                                .padding(.bottom)
                            
                        })
                        NavigationLink(destination: GameView(), label: {
                            Text("experienced")
                                .foregroundColor(.gray)
                                .frame(width: 200, height: 55)
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                                .background(.black.opacity(0.3))
                                .cornerRadius(40)
                                .padding(.bottom)
                            
                        })
                        NavigationLink(destination: GameView(), label: {
                            Text("advanced")
                                .foregroundColor(.gray)
                                .frame(width: 200, height: 55)
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                                .background(.black.opacity(0.3))
                                .cornerRadius(40)
                            
                        })
                        
                    }
                                .padding()
                    VStack{
                        
                        Label {
                            //Text("\(ScoreView.scoreViewModel.percentage)")
                                //.font(.body)
                                //.foregroundColor(.primary)
                                //.foregroundColor(.white)
                        } icon: {
                            Circle()
                                //.fill("\(ScoreView.scoreViewModel.percentage)")
                                .frame(width: 55, height: 55, alignment: .center)
                                .overlay(Text("Qa1")
                                    .foregroundColor(.gray)
                                     )
                                .foregroundColor(.black.opacity(0.3))
                                .padding(.bottom)

                        }
                        Label {
                            //Text("\(scoreViewModel.percentage)")
                                //.font(.body)
                                //.foregroundColor(.primary)
                                //.foregroundColor(.white)
                        } icon: {
                            Circle()
                              //.fill("\(ScoreView.scoreViewModel.percentage)")
                                .frame(width: 55, height: 55, alignment: .center)
                                .overlay(Text("r")
                                    .foregroundColor(.gray)
                                     )
                                .foregroundColor(.black.opacity(0.3))
                                .padding(.bottom)
                        
                        }
                        Label {
                            //Text("salam")
                            //Text("\(ScoreView.scoreViewModel.percentage)")
                               // .font(.body)
                              //  .foregroundColor(.primary)
                                //.foregroundColor(.white)
                        } icon: {
                            Circle()
                              //.fill("\(ScoreView.scoreViewModel.percentage)")
                                .frame(width: 55, height: 55, alignment: .center)
                                .overlay(Text("0%")
                                    .foregroundColor(.gray)
                                     )
                                .foregroundColor(.black.opacity(0.3))
    
                        }
                    }
                }
            }
        } .navigationBarHidden(true)
    }
}

struct choiceOfLevel_Previews: PreviewProvider {
    static var previews: some View {
        choiceOfLevel()
    }
}
