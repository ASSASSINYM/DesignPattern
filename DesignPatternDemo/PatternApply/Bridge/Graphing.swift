//
//  Graphing.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/3.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

public protocol IDrawShape{
    func drawShape() -> Void
}

//基类
class BaseGraphing: NSObject,IDrawShape {
    var _color:BaseColors
    
    public init(color:BaseColors) {
        _color = color
    }
    
    func drawShape() -> Void {
        _color.getColor()
    }
}

class Square: BaseGraphing {
    override func drawShape() {
        super.drawShape()
        NSLog("我是正方形");
    }
}

class Rectangle: BaseGraphing {
    override func drawShape() {
        super.drawShape()
        NSLog("我是矩形");
    }
}

class Elipse: BaseGraphing {
    override func drawShape() {
        super.drawShape()
        NSLog("我是椭圆");
    }
}

class Circle: BaseGraphing {
    override func drawShape() {
        super.drawShape()
        NSLog("我是圆形");
    }
}

