//
//  ViewController.swift
//  iOSClubOOP
//
//  Created by 蔡昌銘 on 2018/8/12.
//  Copyright © 2018 蔡昌銘. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var plate: UITextField!
    @IBOutlet weak var consume: UILabel!
    @IBOutlet weak var passengers: UILabel!
    @IBOutlet weak var goods: UILabel!
    @IBOutlet weak var stock: UILabel!
    @IBOutlet weak var miles: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var choose = 0
//    var cars = [Car(brand: "Honda", plate: "AP-123"),
//                Car(brand: "Toyota", plate: "GG-3B0"),
//                Car(brand: "Mazda", plate: "MM-204"),
//                Car(brand: "Ford", plate: "QQ-340"),
//                Car(brand: "Lexus", plate: "RR-074"),
//                ]
    
    var cars: [Car] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cars.append(Rv(brand: "Honda", plate: "AP-123"))
        cars.append(Truck(brand: "Toyota", plate: "GG-3B0"))
        cars.append(Rv(brand: "Mazda", plate: "MM-204"))
        cars.append(Truck(brand: "Ford", plate: "QQ-340"))
        cars.append(Rv(brand: "Lexus", plate: "RR-074"))
        slider.minimumValue = 0
        slider.maximumValue = Float(cars.count) - 1
        refresh()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardWhenTappedAround()
    }

    func refresh(){
        type.text = cars[choose].getType()
        brand.text = cars[choose].getBrand()
        plate.text = cars[choose].getPlate()
        consume.text = String(cars[choose].getConsume()!)
        passengers.text = String(cars[choose].getPassengers()!)
        goods.text = String(cars[choose].getGoods()!)
        stock.text = String(cars[choose].getStock()!)
        miles.text = String(cars[choose].getMiles()!)
        
    }
    
    @IBAction func changePlate(_ sender: Any) {
        _ = cars[choose].setPlate(plate: plate.text!)
    }
    
    @IBAction func addPassenger(_ sender: Any) {
        cars[choose].addPassenger()
        refresh()
    }
    
    @IBAction func removePassenger(_ sender: Any) {
        cars[choose].removePassenger()
        refresh()
    }
    
    @IBAction func addGoods(_ sender: Any) {
        cars[choose].addGood()
        refresh()
    }
    
    @IBAction func removeGoods(_ sender: Any) {
        cars[choose].removeGood()
        refresh()
    }
    
    @IBAction func drive(_ sender: Any) {
        cars[choose].drive()
        refresh()
    }
    @IBAction func refuel(_ sender: Any) {
        cars[choose].refuel()
        refresh()
    }
    @IBAction func selected(_ sender: Any) {
        slider.value = Float(Int(slider.value))
        choose = Int(slider.value)
        print(slider.value)
        refresh()
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
