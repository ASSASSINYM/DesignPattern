//
//  Women.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/5.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

enum RequestType:NSInteger{
    case fatherType = 0
    case husbandType = 1
    case sonType = 2
}

protocol IWomen {
    func getType() -> RequestType;
    func getRequest() -> String;
}

class Women: NSObject,IWomen {
    
    var type:RequestType
    var request:String = ""
    
    public init(type:RequestType,request:String) {
        self.type = type
        switch self.type {
        case RequestType.fatherType:
            self.request = "女儿的请求是：\(request)"
            break
        case RequestType.husbandType:
            self.request = "妻子的请求是：\(request)"
            break
        case RequestType.sonType:
            self.request = "母亲的请求是：\(request)"
            break
        default:
            self.request = ""
        }
    }
    
    func getType() -> RequestType {
        return self.type
    }
    
    func getRequest() -> String {
        return self.request
    }
    
}
