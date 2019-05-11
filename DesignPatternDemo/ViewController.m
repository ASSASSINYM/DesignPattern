//
//  ViewController.m
//  DesignPatternDemo
//
//  Created by ruantong on 2019/5/8.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "ViewController.h"

#import "LSPMain.h"
#import "DependencyInversionMain.h"
#import "InterfaceMain.h"
#import "LKPMain.h"
#import "LKPMain2.h"
#import "BookStore.h"

#import "NvWaMain.h"
#import "TemplateMain.h"
#import "BuilderMain.h"
#import "DelegateMain.h"
#import "PrototypeMain.h"
#import "MediatorMain.h"
#import "CommandMain.h"
#import "ResponseMain.h"
#import "DrcorationMain.h"
#import "StrategyMain.h"
#import "AdapterMain.h"
#import "CombineMain.h"
#import "ObserverMain.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSArray<NSArray *> * dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];

}

#pragma mark - tableView

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSArray * titleSection = @[@"第1章 六大设计原则",@"第2章 23种设计模式"];
    return titleSection[section];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 44;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr[section].count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = self.dataArr[indexPath.section][indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    id<IMain> iMain;
    if (indexPath.section == 0) {
        if (indexPath.row == 1) {
            iMain = [LSPMain new];
        }else if (indexPath.row == 2) {
            iMain = [DependencyInversionMain new];
        }else if (indexPath.row == 3) {
            iMain = [InterfaceMain new];
        }else if (indexPath.row == 4) {
            iMain = [LKPMain new];
            id<IMain> iMain2 = [LKPMain2 new];
            [iMain2 main];
        }else if (indexPath.row == 5) {
            iMain = [BookStore new];
        }
    }else if (indexPath.section == 1){
        if (indexPath.row == 0) {
            //单例模式
        }else if (indexPath.row == 1) {
            iMain = [NvWaMain new];
        }else if (indexPath.row == 2) {
            //抽象工厂模式
        }else if (indexPath.row == 3){
            iMain = [TemplateMain new];
        }else if (indexPath.row == 4){
            iMain = [BuilderMain new];
        }else if (indexPath.row == 5){
            iMain = [DelegateMain new];
        }else if (indexPath.row == 6){
            iMain = [PrototypeMain new];
        }else if (indexPath.row == 7){
            iMain = [MediatorMain new];
        }else if (indexPath.row == 8){
            iMain = [CommandMain new];
        }else if (indexPath.row == 9){
            iMain = [ResponseMain new];
        }else if (indexPath.row == 10){
            iMain = [DrcorationMain new];
        }else if (indexPath.row == 11){
            iMain = [StrategyMain new];
        }else if (indexPath.row == 12){
            iMain = [AdapterMain new];
        }else if (indexPath.row == 13){
            //迭代器模式
        }else if (indexPath.row == 14){
            iMain = [CombineMain new];
        }else if (indexPath.row == 15){
            iMain = [ObserverMain new];
        }
        
        
    }
    
    if (iMain) {
        [iMain main];
    }
}

#pragma mark - getter
- (NSArray *)dataArr{
    if (!_dataArr) {
        _dataArr = @[
                     @[@"单一职责原则",@"里氏替换原则",@"依赖倒置原则",@"接口隔离原则",@"迪米特法则",@"开闭原则"],
                     @[@"单例模式",@"工厂模式",@"抽象工厂模式",@"模板模式",@"建造者模式",@"代理模式",@"原型模式",@"中介者模式",@"命令模式",@"责任链模式",@"装饰模式",@"策略模式",@"适配器模式",@"迭代器模式",@"组合模式",@"观察者模式"
                       ],
                     ];
    }
    return _dataArr;
}

@end
