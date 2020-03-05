//
//  Group.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/5.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

protocol IGroup {
    func find()
    func add()
    func delete()
    func change()
    func plan()
}

class Group: NSObject,IGroup {
    func find() {
        
    }
    
    func add() {
        
    }
    
    func delete() {
        
    }
    
    func change() {
        
    }
    
    func plan() {
        
    }
    
}

class RequirementGroup: Group {
    override func find() {
        print("找到需求组......")
    }
    
    override func add() {
        print("客户要求添加一项需求......")
    }
    
    override func delete() {
        print("客户要求删除一项需求......")
    }
    
    override func change() {
        print("客户要求修改一项需求......")
    }
    
    override func plan() {
        print("客户要求需求变更计划......")
    }
}

class PageGroup : Group {
    override func find() {
        print("找到美工组......")
    }
    
    override func add() {
        print("客户要求增加一个页面......")
    }
    
    override func delete() {
        print("客户要求删除一个页面......")
    }
    
    override func change() {
        print("客户要求修改一个页面......")
    }
    
    override func plan() {
        print("客户要求页面变更计划......")
    }
}

class CodeGroup: Group {
    override func find() {
        print("找到代码组......")
    }
    
    override func add() {
        print("客户要求增加一项功能......")
    }
    
    override func delete() {
        print("客户要求删除一项功能......")
    }
    
    override func change() {
        print("客户要求修改一项功能......")
    }
    
    override func plan() {
        print("客户要求代码变更计划......")
    }
}
