//
//  DesignPatternDemoTests.m
//  DesignPatternDemoTests
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface DesignPatternDemoTests : XCTestCase

@end

@implementation DesignPatternDemoTests

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

- (void)testDict{
    NSDictionary * dict = @{
                            @"a":@"a1",
                            @"b":@"b1",
                            @"c":@{
                                @"aa":@"aa1",
                                @"bb":@"bb2"
                            }
                            };
    XCTAssertTrue([[dict valueForKeyPath:@"c.aa"] isEqualToString:@"aa1"]);
    XCTAssertTrue([[dict valueForKeyPath:@"c.bb"] isEqualToString:@"bb2"]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
