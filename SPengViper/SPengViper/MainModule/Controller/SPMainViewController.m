//
//  SPMainViewController.m
//  SPengViper
//
//  Created by lisipeng on 2018/4/28.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPMainViewController.h"
#import <SPViperViewPrivate.h>
#import <UIViewController+SPViperRouter.h>
#import "SPListViewEventHandler.h"
#import "SPMainListViewDataSource.h"
#import "SPMainListView.h"
#import "UITableViewBusiness.h"

#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height
@interface SPMainViewController ()<SPViperViewPrivate,SPMainTableViewBusinessProtocol>
/**
 *<#annotation#>
 */
@property (nonatomic , assign) BOOL  appeared;

/**
 *<#annotation#>
 */
@property (nonatomic , strong) UITableView  *tableView;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id<SPListViewEventHandler>  eventHandler;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id<SPMainListViewDataSource>  viewDataSource;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) SPMainListView  *listView;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) UITableViewBusiness  *tableViewBusiness;



@end

@implementation SPMainViewController

- (SPMainListView *)listView
{
    if (nil == _listView)
    {
        _listView = [[SPMainListView alloc] init];
        _listView.backgroundColor = [UIColor whiteColor];
        NSInteger screenHeight = SCREEN_HEIGHT;
        CGFloat listViewX = 0;
        CGFloat listViewY = 0;
        CGFloat listViewWidth = SCREEN_WIDTH;
        CGFloat listViewHeight = screenHeight - 51.5;
        _listView.frame = CGRectMake(listViewX, listViewY, listViewWidth, listViewHeight);
        _listView.tableView.delegate = self.tableViewBusiness;
        _listView.tableView.dataSource = self.tableViewBusiness;
      
    }
    return _listView;
}
- (UITableViewBusiness *)tableViewBusiness
{
    if (nil == _tableViewBusiness) {
        _tableViewBusiness = [[UITableViewBusiness alloc] init];
        _tableViewBusiness.delegate = self;
    }
    return _tableViewBusiness;
}
- (UIViewController *)routeSource
{
    return self;
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if (self.appeared == NO) {
        NSAssert([self.eventHandler conformsToProtocol:@protocol(SPListViewEventHandler)], nil);
        [self registerForPreviewingWithDelegate:self.eventHandler sourceView:self.view];
        
        if ([self.eventHandler respondsToSelector:@selector(handlerViewReady)]) {
            [self.eventHandler handlerViewReady];
        }
        self.appeared = YES;
    }
    if ([self.eventHandler respondsToSelector:@selector(handlerViewWillAppear:)]) {
        [self.eventHandler handlerViewWillAppear:animated];
    }
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if ([self.eventHandler respondsToSelector:@selector(handlerViewDidAppear:)]) {
        [self.eventHandler handlerViewDidAppear:animated];
    }
}
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    if ([self.eventHandler respondsToSelector:@selector(viewDidDisappear:)]) {
        [self.eventHandler handlerViewDidDisappear:animated];
    }
    if (self.SP_isRemoving) {
        if ([self.eventHandler respondsToSelector:@selector(handlerViewRemoved)]) {
            [self.eventHandler handlerViewRemoved];
        }
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupMainViewSubviews];
    if ([self.eventHandler respondsToSelector:@selector(handlerViewDidLoad)]) {
        [self.eventHandler handlerViewDidLoad];
    }
   
}
#pragma mark---SPMainTableViewBusinessProtocol
- (void)tableViewCellClickWithModel:(LSPModel *)model
{
    if ([self.eventHandler respondsToSelector:@selector(tableViewCellClickWithModel:)]) {
        [self.eventHandler tableViewCellClickWithModel:model];
    }
}
- (void)refreshDataWithArray:(NSArray *)listArray
{
    [self.tableViewBusiness.listArray addObjectsFromArray:listArray];
    [self.listView.tableView reloadData];
}
- (void)setupMainViewSubviews
{
    self.title = @"新闻头条";
    self.view.backgroundColor = [UIColor whiteColor];
     [self.view addSubview:self.listView];
    
   // NSArray *listArr = [self.viewDataSource getListData];
  ///  [self.tableViewBusiness.listArray addObjectsFromArray:listArr];
   // [self.listView.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
