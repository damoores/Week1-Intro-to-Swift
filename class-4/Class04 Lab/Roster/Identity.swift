//
//  Identity.swift
//  Roster
//
//  Created by Jeremy Moore on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation


protocol Identity {
    var taskName: String {get set}
    var dateCreated: String {get set}
    var dateToFinish: String {get set}
    var taskFinished: String {get set}
    var id: String {get set}
    
}
