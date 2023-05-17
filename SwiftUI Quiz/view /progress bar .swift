//
//  progress bar .swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 17/5/2023.
//

import SwiftUI

struct progress_bar_: View {
    var width: CGFloat = 350
    var height: CGFloat = 10
    var body: some View {
        ZStack(alignment:.leading){
            RoundedRectangle(cornerRadius: 20 ,style : .continuous)
                .frame(width: width, height: height)
                .foregroundColor(Color.gray.opacity(0.5))
            RoundedRectangle(cornerRadius: 20 ,style : .continuous)
                .frame(width: 200, height: height)
                .background(
                    // to solve colorisation 
                    LinearGradient(gradient: Gradient (colors : [colorisation.progress1,colorisation.progress2]),startPoint: .leading, endPoint: .trailing)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                )
        }
    }
}

struct progress_bar__Previews: PreviewProvider {
    static var previews: some View {
        progress_bar_()
    }
}
