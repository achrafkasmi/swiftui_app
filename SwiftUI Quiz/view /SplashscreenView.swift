//
//  SplashscreenView.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 3/5/2023.
//

import SwiftUI

struct SplashscreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive{
            ContentView()
        } else {
            ZStack{
                colorisation.main
                    .ignoresSafeArea()
                VStack{
                    Image("1")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .bottom)
                        .font(.system(size: 80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashscreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashscreenView()
    }
}
