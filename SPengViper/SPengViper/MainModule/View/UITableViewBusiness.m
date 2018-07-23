//
//  UITableViewBusiness.m
//  SPengViper
//
//  Created by lisipeng on 2018/6/5.
//  Copyright © 2018年 px. All rights reserved.
//

#import "UITableViewBusiness.h"
#import "SPMainListTableViewCell.h"
#import "LSPModelFrame.h"
#import "SPMainTableViewBusinessProtocol.h"
//定义一个Block
typedef void(^RunloopBlock)(void);
@interface UITableViewBusiness()
@property(nonatomic,strong)NSMutableArray * tasks;
/** 最大任务数 */
@property(assign,nonatomic)NSUInteger maxQueueLenght;
@end
@implementation UITableViewBusiness
- (NSMutableArray *)tasks
{
    if (nil == _tasks) {
        _tasks = [NSMutableArray array];
    }
    return _tasks;
}
- (instancetype)init
{
    if (self = [super init]) {
        self.maxQueueLenght = 20;
        [self addRunloopObserver];
    }
    return self;
}
- (NSMutableArray *)listArray
{
    if (nil == _listArray) {
        _listArray = [NSMutableArray array];
    }
    return _listArray;
}
#pragma mark---
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.listArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LSPModelFrame *modelFrame = self.listArray[indexPath.row];
    return modelFrame.cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    LSPModelFrame *modelFrame = self.listArray[indexPath.row];
    LSPModel *model = modelFrame.model;
    if (self.delegate && [self.delegate respondsToSelector:@selector(tableViewCellClickWithModel:)])
    {
        [self.delegate tableViewCellClickWithModel:model];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SPMainListTableViewCell *cell = [SPMainListTableViewCell sp_mainListTableViewCellWithTableView:tableView];
  //  cell.modelFrame = self.listArray[indexPath.row];
    LSPModelFrame *modelFrame = self.listArray[indexPath.row];
    /*
    __weak __typeof(self) weakSelf = self;
    [self addTask:^{
    __strong __typeof(weakSelf) strongSelf = weakSelf;
    [strongSelf refreshCell:cell withModelFrame:modelFrame];
    }];
     */
    return cell;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    SPMainListTableViewCell *displayCell = (SPMainListTableViewCell *)cell;
      LSPModelFrame *modelFrame = self.listArray[indexPath.row];
     __weak __typeof(self) weakSelf = self;
     [self addTask:^{
     __strong __typeof(weakSelf) strongSelf = weakSelf;
     [strongSelf refreshCell:displayCell withModelFrame:modelFrame];
     }];
    
   
  //  displayCell.modelFrame = modelFrame;
    
}
//*****************
#pragma mark - <关于Runloop的代码>

-(void)addTask:(RunloopBlock)task{
    //添加任务到数组!!
    [self.tasks addObject:task];
    if (self.tasks.count > self.maxQueueLenght) {
        [self.tasks removeObjectAtIndex:0];
    }
    
}
- (void)addRunloopObserver
{
    //拿到当前的runloop
    CFRunLoopRef runloop = CFRunLoopGetCurrent();
    //定义一个context
    CFRunLoopObserverContext context = {
        0,
        (__bridge void *)(self),
        &CFRetain,
        &CFRelease,
        NULL,
    };
    
    //定义观察
    static CFRunLoopObserverRef defaultModeObserver;
    //创建观察者
    defaultModeObserver = CFRunLoopObserverCreate(NULL, kCFRunLoopBeforeWaiting, YES, 0, &Callback, &context);
    //添加当前runloop的观察者!!
    CFRunLoopAddObserver(runloop, defaultModeObserver, kCFRunLoopCommonModes);
    //C 语言里面Create相关的函数!创建出来的指针!需要释放
    CFRelease(defaultModeObserver);
}
static void Callback(CFRunLoopObserverRef observer, CFRunLoopActivity activity, void *info){
    //拿到控制器
    UITableViewBusiness * business = (__bridge UITableViewBusiness *)info;
    if (business.tasks.count == 0) {
        return;
    }
    RunloopBlock task = business.tasks.firstObject;
    task();
    //干掉第一个任务
    [business.tasks removeObjectAtIndex:0];
}
- (void)refreshCell:(SPMainListTableViewCell *)cell withModelFrame:(LSPModelFrame *)modelFrame
{
    cell.modelFrame = modelFrame;
}
@end
