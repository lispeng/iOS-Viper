//
//  SPDetailListViewController.m
//  SPengViper
//
//  Created by lisipeng on 2018/6/6.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPDetailListViewController.h"
#import <SPViper.h>
#import <SPViperViewPrivate.h>
#import "SPDetailEventHandler.h"
#import "SPDetailListDataSource.h"
#import "SPDetailListView.h"
#import "LSPModel.h"
@interface SPDetailListViewController ()<SPViperViewPrivate>
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id<SPDetailEventHandler>  eventHandler;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id<SPDetailListDataSource> viewDataSource;
/**
 *<#annotation#>
 */
@property (nonatomic , assign) BOOL  appeared;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) SPDetailListView  *mainView;

@end

@implementation SPDetailListViewController
- (SPDetailListView *)mainView
{
    if (nil == _mainView) {
        _mainView = [[SPDetailListView alloc] init];
        _mainView.backgroundColor = [UIColor whiteColor];
    }
    return _mainView;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    if (self.eventHandler && [self.eventHandler respondsToSelector:@selector(handlerViewDidLoad)]) {
        [self.eventHandler handlerViewDidLoad];
    }
    self.mainView.frame = [self.viewDataSource layoutDetailMainView];
    self.mainView.model = [self.viewDataSource getMainViewMdoel];
    [self.view addSubview:self.mainView];
    
    
}




- (void)refreshData
{
    //加载渲染数据
    
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if (NO == self.appeared) {
        if (self.eventHandler && [self.eventHandler respondsToSelector:@selector(handlerViewReady)]) {
            [self.eventHandler handlerViewReady];
        }
        self.appeared = YES;
    }
    
    if (self.eventHandler && [self.eventHandler respondsToSelector:@selector(handlerViewWillAppear:)]) {
        [self.eventHandler handlerViewWillAppear:animated];
    }
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if (self.eventHandler && [self.eventHandler respondsToSelector:@selector(handlerViewDidAppear:)]) {
        [self.eventHandler handlerViewDidAppear:animated];
    }
    
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    if (self.eventHandler && [self.eventHandler respondsToSelector:@selector(handlerViewWillDisappear:)]) {
        [self.eventHandler handlerViewWillDisappear:animated];
    }
}
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    if (self.eventHandler && [self.eventHandler respondsToSelector:@selector(handlerViewDidDisappear:)]) {
        [self.eventHandler handlerViewDidDisappear:animated];
    }
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

- (nullable UIViewController *)routeSource {
    return self;
}

- (void)dealloc
{
    NSLog(@"\nSPDetailListViewController-->dealloc");
}

@end
