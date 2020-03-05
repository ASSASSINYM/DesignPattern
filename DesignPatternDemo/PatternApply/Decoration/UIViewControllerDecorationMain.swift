//
//  UIViewControllerDecorationMain.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/5.
//  Copyright © 2020 wupeng. All rights reserved.
//

import UIKit

public class UIViewControllerDecorationMain: NSObject {
    @objc public func getDecorationVC() -> UIViewController {
        var vc = UIViewController()
        vc = UIViewControllerAddLogDecoration.init(viewController: vc)
        vc = UIViewControllerAddLog2Decoration.init(viewController: vc)
        
        return vc
    }
}
