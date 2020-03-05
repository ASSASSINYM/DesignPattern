//
//  Command.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/5.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

class Command: NSObject {
    var rg = RequirementGroup()
    var pg = PageGroup()
    var cg = CodeGroup()
    
    func execute() {
        
    }
}

class AddRequirementCommand: Command {
    override func execute() {
        super.rg.find()//找到需求组
        super.rg.add()//增加一份需求
        super.pg.add()//页面也要增加
        super.cg.add()//功能也要增加
        super.rg.plan()//给出计划
    }
}

class DeletePageCommand : Command {
    override func execute() {
        super.pg.find()
        super.rg.delete()
        super.rg.plan()
    }
}
