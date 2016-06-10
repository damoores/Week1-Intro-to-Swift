//
//  AppDelegate.swift
//  Roster
//
//  Created by Michael Babiy on 6/7/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate
{
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        let navigationBarAppearace = UINavigationBar.appearance()
        
        navigationBarAppearace.tintColor = UIColor.purpleColor()
        navigationBarAppearace.barTintColor = UIColor.yellowColor()
        return true
    }
    
    func applicationWillResignActive(application: UIApplication)
    {
        TaskStore.shared.save(String.archivePath(.Default))
    }
    
}


