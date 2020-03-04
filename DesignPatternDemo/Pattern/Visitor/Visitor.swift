//
//  Visitor.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/4.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

protocol IVisitor{
    func visitCommonEmployee(commonEmployee:CommonEmployee);
    func visitManager(manager:Manager);
}

class Visitor: IVisitor {
    
    func visitManager(manager: Manager) {
        let info = getManagerInfo(manager: manager)
        print(info)
    }
    
    func visitCommonEmployee(commonEmployee: CommonEmployee) {
        let info = getCommonEmployeeInfo(commonEmployee: commonEmployee)
        print(info)
    }
    
    func getBasicInfo(employee:Employee) -> NSString {
        let info = "姓名:\(employee.name) 性别:\(employee.sex) 薪水:\(employee.salary)" as NSString
        return info
    }
    
    func getManagerInfo(manager:Manager) -> NSString {
        var info = getBasicInfo(employee: manager)
        info = "\(info) 业绩:\(manager.performance)" as NSString
        return info
    }
    
    func getCommonEmployeeInfo(commonEmployee:CommonEmployee) -> NSString {
        var info = getBasicInfo(employee: commonEmployee)
        info = "\(info) 工作:\(commonEmployee.job)" as NSString
        return info
    }
}



