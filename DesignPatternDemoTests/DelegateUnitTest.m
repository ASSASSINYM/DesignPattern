//
//  DelegateUnitTest.m
//  DesignPatternDemoTests
//
//  Created by ruantong on 2019/5/14.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Driver.h"
#import "BMW.h"
#import "Benz.h"

@interface DelegateUnitTest : XCTestCase

@end

@implementation DelegateUnitTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testPersonalInformationAge{
    NSInteger age = arc4random()%100;
    XCTAssert(age>=0,@"姓名小于0岁-非法");
    XCTAssert(age<110,@"姓名大于110岁-非法");
    
    int a = 3;
    XCTAssertTrue(a == 3,"a 不能 等于 0");

    
    id<IDriver> driver = [Driver new];
    id<ICar> benz = [Benz new];
    id<ICar> bmw = [BMW new];
    NSString * benzStr = [driver driveUnitTest:benz];
    NSString * bmwzStr = [driver driveUnitTest:bmw];
    XCTAssert([bmwzStr isEqualToString:@"宝马跑起来了"]);
    XCTAssert([benzStr isEqualToString:@"奔驰跑起来了"]);
    XCTAssertNotNil(driver, @"返回出错");

}

@end
