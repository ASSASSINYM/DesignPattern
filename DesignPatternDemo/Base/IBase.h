//
//  IBase.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#ifndef IBase_h
#define IBase_h
//依赖倒置原则，对外仅暴露接口
@protocol IMain <NSObject>

@required
- (void)main;
@end

#endif /* IBase_h */
