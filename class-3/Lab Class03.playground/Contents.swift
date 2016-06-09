//: Playground - noun: a place where people can play

import UIKit

//Declare Identity protocol with id function
//Declare a ToDo class that conforms to Identity protocol… Define your own model scheme (variable it contains, etc)
//Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.
//Extend ObjectStore protocol to provide basic implementation for functions
//    Create Store singleton that will conform to ObjectStore protocol and implement requirements
//Demonstrate adding / removing of ToDo items.
//



protocol Identity {
    var taskName: String {get set}
    var dateCreated: String {get set}
    var dateToFinish: String {get set}
    var taskFinished: Bool {get set}
    var id: String {get set}
    
    }

extension Task {
    func description() -> String {
        return "Task '\(self.taskName)' completed status: \(taskFinished)"
    }
}

class Task: Identity {
    var taskName: String
    var dateCreated: String
    var dateToFinish: String
    var taskFinished: Bool
    var id: String
    
    init (taskName: String, dateCreated: String, dateToFinish: String, taskFinished: Bool ) {
        self.taskName = taskName
        self.dateCreated = dateCreated
        self.dateToFinish = dateToFinish
        self.taskFinished = taskFinished
        self.id = NSUUID().UUIDString
    }
}

protocol Storage: class {
    associatedtype Object: Identity
    
    var tasks: [Object] {get set}
    func removeTask(task: Object)
    func addTask(task: Object)
    func markTaskFinished(taskName: String) -> String
    func taskCount() -> Int
    func objectAtIndex(index: Int) -> Object
    func allObjects() -> [Object]
    
    
}

extension Storage {
    
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
        taskToMark[0].taskFinished = true
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

class TaskStore: Storage {
    
    static let shared = TaskStore()
    private init() {}
    typealias Object = Task
    var tasks = [Object]()

    }

let taskOne = Task(taskName: "Get Beer", dateCreated: "6-8-16", dateToFinish: "ASAP", taskFinished: false)

let taskTwo = Task(taskName: "Drink Beer", dateCreated: "6-8-16", dateToFinish: "6-8-16", taskFinished: false)

let taskThree = Task(taskName: "Write code", dateCreated: "6-8-16", dateToFinish: "For Life", taskFinished: false)
let taskFour = Task(taskName: "Kill it!", dateCreated: "6-8-16", dateToFinish: "All day, every day", taskFinished: false)

TaskStore.shared.addTask(taskOne)
TaskStore.shared.addTask(taskTwo)
TaskStore.shared.addTask(taskThree)
TaskStore.shared.addTask(taskFour)

TaskStore.shared.allObjects()
for task in TaskStore.shared.allObjects() {
    print(task.description())
}

TaskStore.shared.markTaskFinished("Kill it!")

for task in TaskStore.shared.allObjects() {
    print(task.description())
}
TaskStore.shared.removeTask(taskOne)
for task in TaskStore.shared.allObjects() {
    print(task.description())
}