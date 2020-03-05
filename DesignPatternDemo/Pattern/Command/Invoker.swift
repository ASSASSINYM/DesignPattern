//
//  Invoker.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/5.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

class Invoker : NSObject {
    private var command:Command
    
    public init(command:Command) {
        self.command = command
    }
    
    func action() {
        self.command.execute()
    }
}
