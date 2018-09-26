//
//  Task.swift
//  Task Manager
//
//  Created by Jacob Glass on 9/20/18.
//  Copyright © 2018 Jacob Glass. All rights reserved.
//

import Foundation

class Task {
    var title : String
    var details : String
    var complete = false
    var completeBy : Date? = nil
    init(title : String, details : String) {
        self.title = title
        self.details = details
    }
}


