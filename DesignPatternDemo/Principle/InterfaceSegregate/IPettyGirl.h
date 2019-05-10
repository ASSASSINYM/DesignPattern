//
//  IPettyGirl.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#ifndef IPettyGirl_h
#define IPettyGirl_h


@protocol IPettyGirl <NSObject>

@required
- (void)goodLooking;
- (void)niceFigure;
- (void)greatTemperament;
@end

//@protocol IGoodBodyGirl <NSObject>
//
//@required
//- (void)goodLooking;
//- (void)niceFigure;
//@end
//
//@protocol IGreatTemperamentGirl <NSObject>
//
//@required
//- (void)greatTemperament;
//@end

#endif /* IPettyGirl_h */
