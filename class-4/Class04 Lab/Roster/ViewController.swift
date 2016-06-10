//
//  ViewController.swift
//  Roster
//
//  Created by Michael Babiy on 6/7/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        let backGroundImage = UIImage(named: "We_Can_Do_It!.jpg")
        let imageView = UIImageView(image: backGroundImage)
        self.tableView.backgroundView = imageView
        self.tableView.reloadData()
        tableView.tableFooterView = UIView(frame: CGRectZero)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}


extension ViewController: UITableViewDataSource
{
    // MARK: Helper Functions
    
    func configureCell(indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("studentCell", forIndexPath: indexPath)
        let task = TaskStore.shared.allObjects()[indexPath.row]
        
        cell.textLabel?.text = "\(task.taskName)"
        // Missing model.
        
        // Missing setup.
        cell.contentView.backgroundColor = UIColor.whiteColor()
        cell.contentView.alpha = 0.75

        
        return cell
    }
    
    // MARK: UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return TaskStore.shared.taskCount()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        return self.configureCell(indexPath)
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
    {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == .Delete {
            
            // Missing model.

            let task = TaskStore.shared.tasks[indexPath.row]
            TaskStore.shared.removeTask(task)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
        }
    }
}