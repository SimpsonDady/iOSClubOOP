//
//  Truck.swift
//  iOSClubOOP
//
//  Created by 蔡昌銘 on 2018/8/13.
//  Copyright © 2018 蔡昌銘. All rights reserved.
//

import Foundation

class Truck: Car{
    public override init(brand: String, plate: String){
        super.init(brand: brand, plate: plate)
        type = "貨車"
        capacity = 100
        consume = 30
    }
    override func addPassenger(){
        if passengers == 3{
            print("There is no seat")
        }
        else{
            passengers? += 1
        }
    }
    
    override func addGood() {
        if goods == 10{
            print("The trunk is full")
        }
        else{
            goods? += 1
        }
    }
}
