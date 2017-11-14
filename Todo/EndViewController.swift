//
//  EndViewController.swift
//  Todo
//
//  Created by Chamandeep on 2017-11-13.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func exit(_ sender: UIButton) {
        let index = isLogin.index(of: true)
        isLogin[index!] = false
        self.performSegue(withIdentifier: "log_out_end", sender: self)
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
