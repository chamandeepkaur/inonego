//
//  GetPriceViewController.swift
//  Todo
//
//  Created by Chamandeep on 2017-11-11.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import UIKit

class GetPriceViewController: UIViewController {
    var array = [Car]()
    @IBOutlet weak var noOfDays: UITextField!
    
    @IBOutlet weak var totalPrice: UILabel!
    @IBAction func CalBtn(_ sender: UIButton) {
        var i = 0
        var t = 0.0
        var total = 0.0
        while i < array.count{
            print(array[i].price)
            t = Double(array[i].price * Float(noOfDays.text!)!)
            total += t
            i += 1
        }
        totalPrice.text = String(total)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("fsdfsdsfsfsfsfsfs")
        print("count= \(array.count)")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
