//
//  TaskStoreProtocol.swift
//  Roster
//
//  Created by Jeremy Moore on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol TaskStorage: class {
    associatedtype Object: NSObject, Identity
    
    var tasks: [Object] {get set}
    func removeTask(task: Object)
    func addTask(task: Object)
    func markTaskFinished(taskName: String) -> String
    func taskCount() -> Int
    func objectAtIndex(index: Int) -> Object
    func allObjects() -> [Object]
    }

extension TaskStorage {
    
    func addTask(object: Object) {
        tasks.append(object)
    }
    
    func removeTask(object: Object) {
        self.tasks = self.tasks.filter({ (task) -> Bool in
            return object.id != task.id
        })
    }
    
    func markTaskFinished(taskName: String) -> String {
        var taskToMark = self.tasks.filter( {(task) -> Bool in
            task.taskName == taskName
        })
        taskToMark[0].taskFinished = "true"
        return "\(taskName) was marked finished"
        
    }
    
    func taskCount() -> Int {
        return tasks.count
    }
    
    func objectAtIndex(index: Int) -> Object {
        return tasks[index]
    }
    
    func allObjects() -> [Object] {
        print(tasks)
        return tasks
    }
    

    
}
