//
//  SignupViewController.swift
//  Todo
//
//  Created by MacStudent on 2017-11-09.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import UIKit
var uname = ["chaman",""]
var pass = ["123",""]
var isLogin = [false, true]
class SignupViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmpassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signup(_ sender: UIButton) {
        let usrName = username.text
        let passWord = password.text
        let cnfrPass = confirmpassword.text
        if((usrName?.isEmpty)! || (passWord?.isEmpty)! || (cnfrPass?.isEmpty)!){
            displayAlert(Msg: "All Fields must be filed")
        }else if (passWord != cnfrPass) {
            displayAlert(Msg: "Password did not match")
        }else if(getUsername(usrN: usrName!)) {
            displayAlert(Msg: "Username already taken")
        }else{
            uname.append(usrName!)
            pass.append(passWord!)
            isLogin.append(false)
            let alert = UIAlertController(title: "Success", message:"You have registered successfully", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {_ in self.performSegue(withIdentifier: "showLogin", sender: self)}))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
    func getUsername(usrN : String) -> Bool {
        let rep = uname.contains( usrN )
        return rep
    }
    func displayAlert(Msg: String){
        let alert = UIAlertController(title: "Error", message:Msg, preferredStyle: UIAlertControllerStyle.alert)
        
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
