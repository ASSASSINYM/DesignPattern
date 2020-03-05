//
//  UIViewControllerDecoration.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/5.
//  Copyright © 2020 wupeng. All rights reserved.
//

import UIKit

class UIViewControllerBaseDecoration: UIViewController {
    var viewController : UIViewController = UIViewController()
    
    public init(viewController : UIViewController) {
        super.init(nibName: nil, bundle: nil)
        self.viewController = viewController
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        self.viewController.viewDidLoad()
    }
    
}

class UIViewControllerAddLogDecoration: UIViewControllerBaseDecoration {    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("增加日志")
    }
}

class UIViewControllerAddLog2Decoration: UIViewControllerBaseDecoration {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("增加日志2")
    }
}
