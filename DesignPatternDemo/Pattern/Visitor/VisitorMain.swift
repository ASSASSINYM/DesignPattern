//
//  VisitorMan.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/4.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

class VisitorMain: NSObject,IMain {
    func main() {
        var graphings:[Employee] = [Employee]()
        
        let zhangSan = CommonEmployee.init(name: "张三", salary: 1800, sex: "男", job: "编写Java程序，绝对的蓝领、苦工加搬运工")
        graphings.append(zhangSan)
        
        let liSi = CommonEmployee.init(name: "李四", salary: 1900, sex: "女", job: "页面美工，审美素质太不流行了!")
        graphings.append(liSi)

        let wangWu = Manager.init(name: "王五", salary: 18750, sex: "女", performance: "基本上是负值,但是我会拍马屁呀")
        graphings.append(wangWu)

        for emp in graphings {
            emp.accept(visitor: Visitor())
        }
    }
}
