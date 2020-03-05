//
//  ResponseMain.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/5.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

class ResponseMain: NSObject,IMain {
    func main() {
        var arrays:[IWomen] = [IWomen]()
        for _ in 1...5 {
            arrays.append(Women.init(type: RequestType(rawValue: NSInteger(arc4random()%3)) ?? RequestType.fatherType, request: "我要出去逛街"))
        }
        let father = Father()
        let husband = Husband()
        let son = Son()
        father.setNext(handler: husband)
        husband.setNext(handler: son)
        
        for women in arrays {
            father.HandleMessage(women: women)
        }
    }
}
