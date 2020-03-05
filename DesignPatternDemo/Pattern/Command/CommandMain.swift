//
//  CommandMain.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/5.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

class CommandMain: NSObject,IMain {
    func main() {
        print(("------------客户要求增加一项需求---------------"))
        let addCommand = AddRequirementCommand()
        var xiaoSan = Invoker.init(command: addCommand)
        xiaoSan.action()
    
        print("------------客户要求删除一个页面---------------")
        let delCommand = DeletePageCommand()
        xiaoSan = Invoker.init(command: delCommand)
        xiaoSan.action()
    }
}
