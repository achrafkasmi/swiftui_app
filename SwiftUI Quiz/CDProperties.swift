//
//  CDProperties.swift
//  SwiftUI Quiz
//
//  Created by Ow Hi Again Ashraf... on 26/5/2023.
//

import Foundation
import CoreData

extension Level {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Level> {
        return NSFetchRequest<Level>(entityName: "Level")
    }
    
    @NSManaged public var beginner: Int32
    @NSManaged public var medium: Int32
    @NSManaged public var experienced: Int32
}
