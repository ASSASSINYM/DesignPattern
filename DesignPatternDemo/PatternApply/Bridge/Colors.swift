//
//  Colors.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/3.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation
import UIKit

public protocol IColor{
    func getColor() -> UIColor
}

class BaseColors: NSObject,IColor {
    func getColor() -> UIColor {
        return UIColor.white
    }
}

class Red: BaseColors {
    override func getColor() -> UIColor {
        NSLog("红色")
        return UIColor.red
    }
}

class Green: BaseColors {
    override func getColor() -> UIColor {
        NSLog("绿色")
        return UIColor.green
    }
}

class Blue: BaseColors {
    override func getColor() -> UIColor {
        NSLog("蓝色")
        return UIColor.blue
    }
}

