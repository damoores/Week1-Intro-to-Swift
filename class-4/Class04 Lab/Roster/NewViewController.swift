//
//  NewViewController.swift
//  Roster
//
//  Created by Michael Babiy on 6/7/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class NewViewController: UIViewController
{
    
    @IBOutlet weak var taskName: UITextField!
    @IBOutlet weak var dateCreated: UITextField!
    @IBOutlet weak var dateToFinish: UITextField!
    @IBOutlet weak var taskFinished: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "New"
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonSelected(sender: UIButton)
    {
        guard let navigationController = self.navigationController else { fatalError("Where did Navigation Controller go? Error origin: \(#function)") }
        
        if let taskName = self.taskName.text, dateCreated = self.dateCreated.text, dateToFinish = self.dateToFinish.text, taskFinished = self.taskFinished.text {
        let task = Task(taskName: taskName, dateCreated: dateCreated, dateToFinish: dateToFinish, taskFinished: taskFinished)
        TaskStore.shared.addTask(task)
        }
        
        navigationController.popViewControllerAnimated(true)
    }
    
}
