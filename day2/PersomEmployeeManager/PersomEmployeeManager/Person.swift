//
//  Person.swift
//  PersomEmployeeManager
//
//  Created by JETS Mobile Lab-11 on 5/5/19.
//  Copyright © 2019 Jets. All rights reserved.
//

import Foundation

class Person{
    func calcSalery(_ salary: Double) -> Double{
        return salary
    }
}
class Employee: Person {
    override func calcSalery(_ salary: Double) -> Double {
        return salary*1.5
    }
}
class Manager: Person {
    override func calcSalery(_ salary: Double) -> Double {
        return salary*2
    }
}
