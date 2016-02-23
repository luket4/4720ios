//
//  Reminder.swift
//  ReminderList
//
//  Created by Lucas Tate on 2/22/16.
//  Copyright © 2016 Uva. All rights reserved.
//

import UIKit

class Reminder {
    
    var title: String
    var description: String
    var dueDate: String
    
    //mark: Initalization
    
    init?(title: String, description: String, dueDate: String){
        
        //initalize stored properties
        self.title = title
        self.description = description
        self.dueDate = dueDate
        
        //init should fail if any value is nil
        if title.isEmpty || dueDate.isEmpty {
            
            return nil
        }
    }
}