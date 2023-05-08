//
//  bottomtext.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 10/10/2022.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
            Spacer()
            Text(str)
            .font(.title3)
                .bold()
                .padding()
                .foregroundColor(.white)
                .opacity(0.6)
            Spacer()
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
