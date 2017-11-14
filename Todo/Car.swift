//
//  Car.swift
//  Todo
//
//  Created by Chamandeep on 2017-11-08.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation
import UIKit

class Car  : NSObject{
    
    var image : UIImage
    
    var name : String
    
    var mileage : Float
    
    var price: Float
    
    var capacity: Int
    
    var rate: Float
    
    var isSelected : Bool
    
    var address : String
    
    override init (){
        image = UIImage()
        name = ""
        mileage = 0
        price = 0
        capacity = 0
        rate = 0
        isSelected = false
        address = ""
    }
}
