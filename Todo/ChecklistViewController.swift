//
//  ViewController.swift
//  Todo
//
//  Created by Chamandeep on 2017-10-30.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController, AddItemViewControllerDelegate {
    func addItemViewControllerDidCancel(_ controller: AddItemViewController) {
        navigationController?.popViewController(animated: true)
    }
    
    
    

    
    
    var cars : [Car]
    
    required init?(coder aDecoder: NSCoder) {
        
    
        
        cars = [Car]()
        
        let car1 = Car()
        car1.name = "XUV"
        car1.price = 100
        car1.capacity = 6
        car1.mileage = 13
        car1.rate = 0
        car1.image = #imageLiteral(resourceName: "car1")
        car1.address = "toronto"
        car1.isSelected = false
        cars.append( car1 )
        
        
        let car2 = Car()
        car2.name = "SUV"
        car2.price = 90
        car2.capacity = 5
        car2.mileage = 14
        car2.rate = 0
        car2.image = #imageLiteral(resourceName: "car2")
        car2.address = "toronto"
        car2.isSelected = false
        cars.append( car2)
        
        
        let car3 = Car()
        car3.name = "sedan"
        car3.price = 80
        car3.capacity = 4
        car3.mileage = 10
        car3.rate = 0
        car3.image = #imageLiteral(resourceName: "car3")
        car3.address = "toronto"
        car3.isSelected = false
        cars.append( car3 )
        
        
        let car4 = Car()
        car4.name = "convertable"
        car4.price = 90
        car4.capacity = 2
        car4.mileage = 11
        car4.rate = 0
        car4.image = #imageLiteral(resourceName: "car4")
        car4.address = "toronto"
        car4.isSelected = false
        cars.append( car4 )
        
        let car5 = Car()
        car5.name = "tour van"
        car5.price = 100
        car5.capacity = 20
        car5.mileage = 17
        car5.rate = 0
        car5.image = #imageLiteral(resourceName: "car5")
        car5.address = "toronto"
        car5.isSelected = false
        cars.append( car5 )
        
        
        
        
        
        
       
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    

    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
//        items.remove(at: indexPath.row)
//        
//        let indexPaths = [indexPath]
//        tableView.deleteRows(at:  indexPaths, with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
        
            
            let item = cars[indexPath.row]
            
            item.isSelected  = !item.isSelected
            configureCheckmark(for: cell, with: item)
            
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "Description" {
            let controller = segue.destination as! AddItemViewController
            controller.delegate = self
            
            if let button = sender as? UIButton {
                let cell = button.superview?.superview as! UITableViewCell
                if let indexPath = tableView.indexPath(for: cell) {
                    controller.itemToShow = cars[indexPath.row]
                }
            }
            
            
           
            
        }
        if segue.identifier == "showPrice" {
            print("in segue")
            var selectedCar = [Car]()
            var i = 0
            let controller1 = segue.destination as! GetPriceViewController
            while i < cars.count{
                if(cars[i].isSelected){
                     print("in segue1")
                    selectedCar.append(cars[i])
                }
                i += 1
            }
            print("test \(selectedCar.count)")
            controller1.array = selectedCar
            
            
        }
    }
    
  
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        
        
        let item = cars[indexPath.row]

        
        configureCheckmark(for: cell, with: item)
        configureCar(for: cell, with: item)
        configureName(for: cell, with: item)
        configurePrice(for: cell, with: item)
        
        

        return  cell
    }

    
    
   
   
    func configureCheckmark (for cell : UITableViewCell, with item : Car) {
        if item.isSelected {
            cell.accessoryType = UITableViewCellAccessoryType.checkmark
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.none
        }
        
        
    }
    func configureCar (for cell : UITableViewCell, with item : Car) {
        let carImage = cell.viewWithTag(1) as! UIImageView
        
        carImage.image = item.image
    }
    
    func configureName (for cell : UITableViewCell, with item : Car) {
        let name = cell.viewWithTag(2) as! UILabel
        
        name.text = item.name
    }
    
    func configureRate (for cell : UITableViewCell, with item : Car) {
        let rate = cell.viewWithTag(3) as! UILabel
        
        rate.text = String(describing: item.rate)
        
    }
    func configurePrice (for cell : UITableViewCell, with item : Car) {
        let price = cell.viewWithTag(3) as! UILabel
        
        price.text = String(describing: item.price)

    }


    func configureMileage (for cell : UITableViewCell, with item : Car) {
        let Mileage = cell.viewWithTag(4) as! UILabel
        
        Mileage.text = String( describing: item.mileage)
    }


    func configureCapacity (for cell : UITableViewCell, with item : Car) {
        let capacity = cell.viewWithTag(5) as! UILabel
        
        capacity.text = String(item.capacity)
        
    }
}


