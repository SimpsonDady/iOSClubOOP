//
//  Car.swift
//  iOSClubOOP
//
//  Created by 蔡昌銘 on 2018/8/12.
//  Copyright © 2018 蔡昌銘. All rights reserved.
//

import Foundation

class Car{
    internal var type: String?
    private var brand: String?      //品牌
    private var plate: String?      //車牌
    internal var consume: Double?    //耗油量
    internal var capacity: Double?   //油箱大小
    private var stock: Double?      //油量
    private var miles: Double?      //里程
    internal var passengers: Int?
    internal var goods: Int?
    
    public init(brand: String, plate: String){
        self.type = "汽車"
        self.brand = brand
        self.plate = plate
        self.consume = 1
        self.stock = 1
        self.capacity = stock
        self.miles = 0
        self.passengers = 0
        self.goods = 0
    }
    
    
    public func drive(){
        miles = miles! + (stock! * consume!)
        stock = 0
    }
    public func refuel(){
        stock = capacity
    }
    public func addPassenger(){
        passengers? += 1
    }
    public func removePassenger(){
        if passengers! > 0{
            passengers? -= 1
        }
    }
    public func addGood(){
        goods? += 1
    }
    public func removeGood(){
        if goods! > 0{
            goods? -= 1
        }
    }
    
    public func setPlate(plate p: String) -> Bool{
        if p.count == 6{
            self.plate = p
            return true
        }
        else{
            return false
        }
    }
    
    public func getType() -> String?{
        return type
    }
    public func getPlate() -> String?{
        return plate
    }
    public func getBrand() -> String?{
        return brand
    }
    public func getConsume() -> Double?{
        return consume
    }
    public func getStock() -> Double?{
        return stock
    }
    public func getCapacity() -> Double?{
        return capacity
    }
    public func getPassengers() -> Int?{
        return passengers
    }
    public func getGoods() -> Int?{
        return goods
    }
    public func getMiles() -> Double?{
        return miles
    }
}
