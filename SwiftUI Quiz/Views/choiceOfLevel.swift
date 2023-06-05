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
                        NavigationLink(destination: GamePlayViewMedium(), label: {
                            Text("Medium")
                                .foregroundColor(.gray)
                                .frame(width: 200, height: 55)
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                                .background(.black.opacity(0.3))
                                .cornerRadius(40)
                                .padding(.bottom)
                            
                        })
                        NavigationLink(destination: GamePlayViewAdvanced(), label: {
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
                            Circle() //circle 1
                                //.fill("\(ScoreView.scoreViewModel.percentage)")
                                .frame(width: 55, height: 55, alignment: .center)
                                .overlay(Text("90%") 
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
                            Circle() //circle 2
                              //.fill("\(ScoreView.scoreViewModel.percentage)")
                                .frame(width: 55, height: 55, alignment: .center)
                                .overlay(Text("40%")
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
                            Circle() //circle 3
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
/* has no error import Foundation
import SwiftUI

struct choiceOfLevel: View {
    @StateObject private var dataController = Datacontroller()
    
    var body: some View {
        NavigationView {
            ZStack {
                colorisation.main.ignoresSafeArea()
                HStack {
                    VStack {
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
                        NavigationLink(destination: GamePlayViewMedium(), label: {
                            Text("Medium")
                                .foregroundColor(.gray)
                                .frame(width: 200, height: 55)
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                                .background(.black.opacity(0.3))
                                .cornerRadius(40)
                                .padding(.bottom)
                        })
                        NavigationLink(destination: GamePlayViewAdvanced(), label: {
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
                    
                    VStack {
                        Label {
                            Text("\(dataController.getAllLevels().first?.beginner ?? 0)%")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                        } icon: {
                            Circle()
                                .frame(width: 55, height: 55, alignment: .center)
                                .foregroundColor(.black.opacity(0.3))
                                .overlay(Text("\(dataController.getAllLevels().first?.beginner ?? 0)%")
                                    .foregroundColor(.white)
                                )
                                .padding(.bottom)
                        }
                        
                        Label {
                            Text("\(dataController.getAllLevels().first?.medium ?? 0)%")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                        } icon: {
                            Circle()
                                .frame(width: 55, height: 55, alignment: .center)
                                .foregroundColor(.black.opacity(0.3))
                                .overlay(Text("\(dataController.getAllLevels().first?.medium ?? 0)%")
                                    .foregroundColor(.white)
                                )
                                .padding(.bottom)
                        }
                        
                        Label {
                            Text("\(dataController.getAllLevels().first?.advanced ?? 0)%")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                        } icon: {
                            Circle()
                                .frame(width: 55, height: 55, alignment: .center)
                                .foregroundColor(.black.opacity(0.3))
                                .overlay(Text("\(dataController.getAllLevels().first?.advanced ?? 0)%")
                                    .foregroundColor(.white)
                                )
                        }
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct choiceOfLevel_Previews: PreviewProvider {
    static var previews: some View {
        choiceOfLevel()
    }
}*/







/*import Foundation
import SwiftUI
import CoreData

struct choiceOfLevel: View {
    @StateObject private var dataController = Datacontroller()
    
    var body: some View {
        NavigationView {
            ZStack {
                colorisation.main.ignoresSafeArea()
                HStack {
                    VStack {
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
                        NavigationLink(destination: GamePlayViewMedium(), label: {
                            Text("Medium")
                                .foregroundColor(.gray)
                                .frame(width: 200, height: 55)
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                                .background(.black.opacity(0.3))
                                .cornerRadius(40)
                                .padding(.bottom)
                        })
                        NavigationLink(destination: GamePlayViewAdvanced(), label: {
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
                    
                    VStack {
                        Label {
                            Text("\(dataController.getAllLevels().first?.beginner ?? 0)%")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                        } icon: {
                            Circle()
                                .frame(width: 55, height: 55, alignment: .center)
                                .foregroundColor(.black.opacity(0.3))
                                .overlay(Text("\(dataController.getAllLevels().first?.beginner ?? 0)%")
                                    .foregroundColor(.white)
                                )
                                .padding(.bottom)
                        }
                        
                        Label {
                            Text("\(dataController.getAllLevels().first?.medium ?? 0)%")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                        } icon: {
                            Circle()
                                .frame(width: 55, height: 55, alignment: .center)
                                .foregroundColor(.black.opacity(0.3))
                                .overlay(Text("\(dataController.getAllLevels().first?.medium ?? 0)%")
                                    .foregroundColor(.white)
                                )
                                .padding(.bottom)
                        }
                        
                        Label {
                            Text("\(dataController.getAllLevels().first?.advanced ?? 0)%")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                        } icon: {
                            Circle()
                                .frame(width: 55, height: 55, alignment: .center)
                                .foregroundColor(.black.opacity(0.3))
                                .overlay(Text("\(dataController.getAllLevels().first?.advanced ?? 0)%")
                                    .foregroundColor(.white)
                                )
                        }
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct choiceOfLevel_Previews: PreviewProvider {
    static var previews: some View {
        choiceOfLevel()
    }
}*/



/*import Foundation
import SwiftUI
import CoreData

struct choiceOfLevel: View {
    @StateObject private var dataController = Datacontroller()
    
    var body: some View {
        NavigationView {
            ZStack {
                colorisation.main.ignoresSafeArea()
                HStack {
                    VStack {
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
                        NavigationLink(destination: GamePlayViewMedium(), label: {
                            Text("Medium")
                                .foregroundColor(.gray)
                                .frame(width: 200, height: 55)
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                                .background(.black.opacity(0.3))
                                .cornerRadius(40)
                                .padding(.bottom)
                        })
                        NavigationLink(destination: GamePlayViewAdvanced(), label: {
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
                    
                    VStack {
                        Label {
                         Text("\(dataController.getAllLevels().first?.beginner ?? 0)%")
                         .foregroundColor(.gray)
                         .font(.system(size: 20))
                    }icon: {
                            Circle()
                                .frame(width: 55, height: 55, alignment: .center)
                                .foregroundColor(.black.opacity(0.3))
                                .overlay(Text("\(dataController.getAllLevels().first?.beginner ?? 0)%")
                                    .foregroundColor(.white)
                                )
                                .padding(.bottom)
                        }
                        
                        Label {
                            Text("\(dataController.getAllLevels().first?.medium ?? 0)%")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                        } icon: {
                            Circle()
                                .frame(width: 55, height: 55, alignment: .center)
                                .foregroundColor(.black.opacity(0.3))
                                .overlay(Text("\(dataController.getAllLevels().first?.medium ?? 0)%")
                                    .foregroundColor(.white)
                                )
                                .padding(.bottom)
                        }
                        
                        Label {
                            Text("\(dataController.getAllLevels().first?.advanced ?? 0)%")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                        } icon: {
                            Circle()
                                .frame(width: 55, height: 55, alignment: .center)
                                .foregroundColor(.black.opacity(0.3))
                                .overlay(Text("\(dataController.getAllLevels().first?.advanced ?? 0)%")
                                    .foregroundColor(.white)
                                )
                        }
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct choiceOfLevel_Previews: PreviewProvider {
    static var previews: some View {
        choiceOfLevel()
    }
}*/



