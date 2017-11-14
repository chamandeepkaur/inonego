//
//  AddItemViewController.swift
//  Todo
//
//  Created by Chamandeep on 2017-11-01.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate : class {
    func addItemViewControllerDidCancel (_ controller : AddItemViewController)
    
   
}

class AddItemViewController: UITableViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var capacity: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var address: UILabel!
    
    
    
    @IBOutlet weak var mileage: UILabel!
    
    
    
    
    
    
    
var up = true
//    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var houseView: UIImageView!
    
    weak var delegate : AddItemViewControllerDelegate?
    
    
    
    
    
 
    
    var itemToShow : Car?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.largeTitleDisplayMode = .never

        name.text = itemToShow!.name
        price.text = String(describing: itemToShow!.price)
        capacity.text = String( describing: itemToShow!.capacity)
        mileage.text = String(describing: itemToShow!.mileage)
        image.image = itemToShow?.image
        address.text = itemToShow!.address
        

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        textField.becomeFirstResponder()
    }
    
    
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
    
    
}
