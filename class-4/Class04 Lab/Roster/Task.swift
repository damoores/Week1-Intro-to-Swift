//
//  Student.swift
//  Roster
//
//  Created by Jeremy Moore on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Task: NSObject, Identity, NSCoding {
    var taskName: String
    var dateCreated: String
    var dateToFinish: String
    var taskFinished: String
    var id: String
    
//    func description() -> String {
//        return "Task '\(self.taskName)' completed status: \(taskFinished)"
//    }
    
   
    
    init (taskName: String, dateCreated: String, dateToFinish: String, taskFinished: String ) {
        self.taskName = taskName
        self.dateCreated = dateCreated
        self.dateToFinish = dateToFinish
        self.taskFinished = taskFinished
        self.id = NSUUID().UUIDString
    }
    
    // MARK: NSCoding
    
    required convenience init?(coder aDecoder: NSCoder)
    {
        guard let taskName = aDecoder.decodeObjectForKey("taskName") as? String else { fatalError("Task Name.") }
        guard let dateCreated = aDecoder.decodeObjectForKey("dateCreated") as? String else { fatalError("No date created.") }
        guard let dateToFinish = aDecoder.decodeObjectForKey("dateToFinish") as? String else {fatalError("No date to finish")}
        guard let taskFinished = aDecoder.decodeObjectForKey("taskFinished") as? String else {fatalError("No finished status")}
        guard let id = aDecoder.decodeObjectForKey("id") as? String else {fatalError("No id")}

        
        // After we get all of our data, let's initialize the actual object.
        self.init(taskName: taskName, dateCreated: dateCreated, dateToFinish: dateToFinish, taskFinished: taskFinished)
    }
    
    func encodeWithCoder(aCoder: NSCoder)
    {
        aCoder.encodeObject(self.taskName, forKey: "taskName")
        aCoder.encodeObject(self.dateCreated, forKey: "dateCreated")
        aCoder.encodeObject(self.dateToFinish, forKey: "dateToFinish")
        aCoder.encodeObject(self.taskFinished, forKey: "taskFinished")
        aCoder.encodeObject(self.id, forKey: "id")

    }
    
}
