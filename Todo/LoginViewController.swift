//
//  LoginViewController.swift
//  Todo
//
//  Created by MacStudent on 2017-11-09.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signin(_ sender: UIButton) {
        let usrname = username.text
        let usrpass = password.text
        if(uname.contains(usrname!)){
            let index = uname.index(of: usrname!)
            
            if(pass[index!] == usrpass!){
                isLogin[index!] = true
                self.performSegue(withIdentifier: "gotoMap", sender: self)
            }else{
                alertError()
            }
        }else{
            alertError()
        }
    }
    func alertError(){
        let alert = UIAlertController(title: "Error", message:"Username Or Password is incorrect", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
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
