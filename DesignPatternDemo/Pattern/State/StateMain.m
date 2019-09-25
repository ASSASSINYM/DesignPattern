//
//  StateMain.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/12.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "StateMain.h"
#import "StateContext.h"
#import "LiftState.h"
#import "ClosingState.h"

typedef enum : NSInteger{
    LiftStateOpenType,
    LiftStateCloseType,
    LiftStateRunType,
    LiftStateStopType,
}LiftStateType;

@interface StateMain()
@property (nonatomic,assign) LiftStateType stateType;
@end

@implementation StateMain

- (void)main{
    StateContext * context = [StateContext new];
    [context open];
    [context close];
    [context run];
    [context stop];
}
//关门或停止的时候可以运行
- (void)run{
    NSLog(@"电梯门关闭");
    if (_stateType == LiftStateCloseType || _stateType == LiftStateStopType) {
        _stateType = LiftStateRunType;
        [self runWithoutLogic];
    }
}
//关门或停止的时候可以开门
- (void)open{
    NSLog(@"电梯门开启");
    if (_stateType == LiftStateCloseType || _stateType == LiftStateStopType) {
        _stateType = LiftStateOpenType;
        [self openWithoutLogic];
    }
}

//开门的时候才可以关门
- (void)close{
    if (_stateType == LiftStateOpenType) {
        _stateType = LiftStateCloseType;
        [self closeWithoutLogic];
    }
}
//运行或关门状态可以停止
- (void)stop{
    if (_stateType == LiftStateCloseType || _stateType == LiftStateRunType) {
        _stateType = LiftStateStopType;
        [self stopWithoutLogic];
    }
}

//纯粹的电梯关门，不考虑实际的逻辑
-(void)closeWithoutLogic{
    NSLog(@"电梯门关闭...");
}
//纯粹的电梯开门，不考虑任何条件
-(void)openWithoutLogic{
    NSLog(@"电梯门开启...");
}
//纯粹的运行，不考虑其他条件
-(void)runWithoutLogic{
    NSLog(@"电梯上下运行起来...");
}
//单纯的停止，不考虑其他条件
-(void)stopWithoutLogic{
    NSLog(@"电梯停止了...");
}

@end
