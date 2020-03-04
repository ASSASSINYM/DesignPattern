//
//  DrcorationMain.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/4.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

class DrcorationMain: NSObject,IMain {
    func main() {
        var sr:SchoolReport = FouthGradeSchoolReport();
        sr = HighScoreDecorator.init(sr: sr);
        sr = SortDecorator.init(sr: sr);
        sr.report()
        sr.sign(name: "老三")
    }
}
