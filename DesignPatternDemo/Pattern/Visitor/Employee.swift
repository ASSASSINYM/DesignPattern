//
//  Employee.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/4.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

class Employee: NSObject {
    var name:NSString
    var salary:Double
    var sex:NSString
    
    init(name:NSString,salary:Double,sex:NSString) {
        self.name = name
        self.salary = salary
        self.sex = sex
    }
    
    func accept(visitor:IVisitor) {
        
    }
}

class CommonEmployee: Employee {
    var job:NSString = ""
    
    init(name: NSString, salary: Double, sex: NSString,job:NSString) {
        super.init(name: name, salary: salary, sex: sex)
        self.job = job
    }
    
    override func accept(visitor: IVisitor) {
        visitor.visitCommonEmployee(commonEmployee: self)
    }
}

class Manager: Employee {
    var performance:NSString = "" //业绩
    
    init(name: NSString, salary: Double, sex: NSString,performance:NSString) {
        super.init(name: name, salary: salary, sex: sex)
        self.performance = performance
    }
    
    override func accept(visitor: IVisitor) {
        visitor.visitManager(manager: self)
    }
}
