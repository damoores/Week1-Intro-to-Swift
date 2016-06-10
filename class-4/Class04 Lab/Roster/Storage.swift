//
//  StorageProtocol.swift
//  Roster
//
//  Created by Jeremy Moore on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class TaskStore: TaskStorage {
    
    static let shared = TaskStore()
    typealias Object = Task
    var tasks = [Object]()
    
    func save(file: String)
    {
        NSKeyedArchiver.archiveRootObject(self.tasks, toFile: file)
    }
    
    private init()
    {
        if let
            data = NSData(contentsOfFile: String.archivePath(.Default)),
            storedItems = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? [Object] {
            self.tasks = storedItems
        }
    }
}
