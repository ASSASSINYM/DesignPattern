//
//  SymbolExpression.h
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/13.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "Expression.h"

NS_ASSUME_NONNULL_BEGIN

@interface SymbolExpression : Expression
@property (nonatomic,strong) Expression * left;
@property (nonatomic,strong) Expression * right;
- (instancetype)initWithLeft:(Expression *)left right:(Expression *)right;
@end

NS_ASSUME_NONNULL_END
