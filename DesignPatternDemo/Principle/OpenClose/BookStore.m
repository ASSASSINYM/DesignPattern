//
//  BookStore.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "BookStore.h"
#import "IBook.h"
#import "NovelBook.h"
#import "OffNovelBook.h"
#import "ComputerBook.h"

@interface BookStore ()
@property (nonatomic,strong) NSMutableArray<id<IBook>> * bookList;
@end

@implementation BookStore

- (void)main{
    for (id<IBook> book in self.bookList) {
        NSLog(@"书籍名称:%@\t书籍作者:%@\t书籍价格%.2f元",book.getName,book.getAuthor,book.getPrice/100.0);
    }
}

#pragma mark - getter

- (NSMutableArray<id<IBook>> *)bookList{
    if (!_bookList) {
        _bookList = [[NSMutableArray alloc] init];
        [_bookList addObject:[[OffNovelBook alloc] initWithName:@"天龙八部" price:3200 author:@"金庸"]];
        [_bookList addObject:[[OffNovelBook alloc] initWithName:@"巴黎圣母院" price:5600 author:@"雨果"]];
        [_bookList addObject:[[OffNovelBook alloc] initWithName:@"悲惨世界" price:3500 author:@"雨果"]];
        [_bookList addObject:[[OffNovelBook alloc] initWithName:@"金瓶梅" price:4300 author:@"兰陵笑笑生"]];
        [_bookList addObject:[[ComputerBook alloc] initWithName:@"设计模式之禅" price:4300 author:@"秦小波" scope:@"编程语言"]];
    }
    return _bookList;
}

@end
