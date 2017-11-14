//
//  ChecklistItem.swift
//  Todo
//
//  Created by Chamandeep on 2017-10-31.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked () {
        checked = !checked 
    }
    
}
