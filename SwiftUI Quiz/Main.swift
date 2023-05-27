//
//  SwiftUI_QuizApp.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 18/10/2022.
//

import Foundation
import SwiftUI
import CoreData

@main
struct SwiftUI_QuizApp: App {
    @StateObject private var dataController = Datacontroller()
    @Environment(\.managedObjectContext) var managedObjectContext
    
    var body: some Scene {
        WindowGroup {
            SplashscreenView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}

