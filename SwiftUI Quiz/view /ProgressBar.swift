//
//  ProgressBar.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 25/5/2023.
//


import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    var cornerRadius: CGFloat = 5
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(.gray)
                    .cornerRadius(cornerRadius)
                
                Rectangle()
                    .frame(width: geometry.size.width * self.progress, height: geometry.size.height)
                    .foregroundColor(.black)
                    .cornerRadius(cornerRadius)
            }
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 0.5)
            .frame(height: 10)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
