//
//  Car.swift
//  iOSClubOOP
//
//  Created by 蔡昌銘 on 2018/8/12.
//  Copyright © 2018 蔡昌銘. All rights reserved.
//

import Foundation

class Car{
    private var brand: String?
    private var plate: String?
    private var consume: Double?
    private var capacity: Double?
    private var passengers: [String]?
    private var goods: [String]?
    
    public init(brand: String, plate: String, consume: Double){
        self.brand = brand
        self.plate = plate
        self.consume = consume
        self.capacity = 100
        self.passengers = []
        self.goods = []
    }
    
    public func drive(){
        consume = 0
    }
    public func refuel(){
        consume = 100
    }
    public func addPassenger(passenger p: String){
        passengers?.append(p)
    }
    public func removePassenger(){
        _ = passengers?.popLast()
    }
    public func addGood(Good g: String){
        goods?.append(g)
    }
    public func removegood(){
        _ = goods?.popLast()
    }
}
