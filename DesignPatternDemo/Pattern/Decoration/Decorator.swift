//
//  Decorator.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/4.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

class Decorator: SchoolReport {
    var sr:SchoolReport
    
    public init(sr:SchoolReport) {
        self.sr = sr
    }
    
    override func report() {
        self.sr.report()
    }
    
    override func sign(name: NSString) {
        self.sr.sign(name: name)
    }
}

class HighScoreDecorator: Decorator {
    
    override func report() {
        super.report()
        self.reportHighScore()
    }
    
    func reportHighScore(){
        print("这次考试语文最高是75，数学78，自然是80")
    }
    
    override func sign(name: NSString) {
        super.sign(name: name)
        print("我是高分修饰签名")
    }
}

class SortDecorator: Decorator {

    override func report() {
        super.report()
        self.reportSort()
    }
    
    func reportSort(){
        print("我的排名第38名")
    }
    
    override func sign(name: NSString) {
        super.sign(name: name)
        print("我是排名修饰签名")
    }
}
