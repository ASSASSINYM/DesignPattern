//
//  Handler.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/5.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

class Handler: NSObject {
    
    private var level:RequestType
    private var nextHandler:Handler? = nil
    
    public init(level:RequestType) {
        self.level = level
    }
    
    func HandleMessage( women:IWomen) {
        if women.getType() == self.level {
            response(women: women)
        }else{
            if self.nextHandler != nil{
                self.nextHandler?.HandleMessage(women: women)
            }
        }
    }
    
    func setNext(handler:Handler) {
        self.nextHandler = handler
    }
    
    func response(women:IWomen) {
        
    }
}

class Father : Handler {
    public init() {
        super.init(level: RequestType.fatherType)
    }
    
    override func response(women: IWomen) {
        print("--------女儿向父亲请示-------")
        print(women.getRequest())
        print("父亲的答复是:同意\n")
    }
}

class Husband : Handler {
    public init() {
        super.init(level: RequestType.husbandType)
    }
    
    override func response(women: IWomen) {
        print("--------妻子向丈夫请示-------")
        print(women.getRequest())
        print("丈夫的答复是：同意\n")
    }
}

class Son : Handler {
    public init() {
        super.init(level: RequestType.sonType)
    }
    
    override func response(women: IWomen) {
        print("--------母亲向儿子请示-------")
        print(women.getRequest())
        print("儿子的答复是：同意\n")
    }
}
