//
//  Rv.swift
//  iOSClubOOP
//
//  Created by 蔡昌銘 on 2018/8/12.
//  Copyright © 2018 蔡昌銘. All rights reserved.
//

import Foundation

class Rv: Car{
    public override init(brand: String, plate: String){
        super.init(brand: brand, plate: plate)
        type = "休旅車"
        capacity = 50
        consume = 10
    }
    override func addPassenger(){
        if passengers == 6{
            print("There is no seat")
        }
        else{
            passengers? += 1
        }
    }
    
    override func addGood() {
        if goods == 3{
            print("The trunk is full")
        }
        else{
            super.addGood()
        }
    }
}
