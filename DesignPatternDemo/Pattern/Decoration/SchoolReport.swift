//
//  FouthGradeSchoolReport.swift
//  DesignPatternDemo
//
//  Created by wupeng on 2020/3/4.
//  Copyright © 2020 wupeng. All rights reserved.
//

import Foundation

protocol ISchoolReport {
    func report()
    func sign(name:NSString)
}

class SchoolReport: NSObject,ISchoolReport {
    func report(){}
    
    func sign(name:NSString){}

}

class FouthGradeSchoolReport: SchoolReport {
    override func report() {
        print("\n成绩单")
        print("尊敬的XXX家长:");
        print("语文62数学65体育98自然63");
        print("家长签名:\n");
    }
    
    override func sign(name: NSString) {
        print("家长签名为:",name);
    }
    
}
