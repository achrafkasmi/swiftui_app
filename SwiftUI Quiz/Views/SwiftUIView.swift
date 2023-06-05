//
//  SwiftUIView.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 24/5/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var progressValue: Float = 0.5 // Initial progress value
    
    var body: some View {
        VStack {
            ProgressView(value: progressValue)
                .progressViewStyle(LinearProgressViewStyle())
                .padding()
            
            Button("Increase Progress") {
                if progressValue < 1.0 {
                    progressValue += 0.1
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
