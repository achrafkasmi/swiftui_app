//
//  Datacontroller.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 9/5/2023.
//

/*import Foundation
import CoreData

class Datacontroller: ObservableObject {
    let container = NSPersistentContainer(name: "Level")
    
init() {
        container.loadPersistentStores{desc ,error in
            if let error = error {
                print("failed to load data \(error.localizedDescription)") 
            }
        }
    }
    func save (score: NSManagedObjectContext) {
        do {
            try score.save()
            print ("Data saved!!! WUHU!!!")
        } catch {
            print ("We could not save the data...")
        }
    }
}*/
import Foundation
import CoreData

class Datacontroller: ObservableObject {
    let container = NSPersistentContainer(name: "Level")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("failed to load data \(error.localizedDescription)")
            }
        }
    }
    
    func save() {
        let context = container.viewContext
        do {
            try context.save()
            print ("Data saved!!! WUHU!!!")
        } catch {
            print ("We could not save the data...")
        }
    }
    
    func getAllLevels() -> [Level] {
        let context = container.viewContext
        let fetchRequest: NSFetchRequest<Level> = Level.fetchRequest()
        do {
            let levels = try context.fetch(fetchRequest)
            return levels
        } catch {
            print("Error fetching levels: \(error.localizedDescription)")
            return []
        }
    }
}
