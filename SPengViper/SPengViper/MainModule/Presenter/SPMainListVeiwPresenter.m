//
//  SPMainListVeiwPresenter.m
//  SPengViper
//
//  Created by lisipeng on 2018/5/28.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPMainListVeiwPresenter.h"
#import <SPViperView.h>
#import <SPViperPresenterPrivate.h>
#import "SPMainListViewProtocol.h"
#import "SPMainListWireframeInput.h"
#import "SPMainListInteractorInput.h"
#import "UITableViewBusiness.h"

@interface SPMainListVeiwPresenter()<SPViperPresenterPrivate>
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id<SPMainListWireframeInput>  wireframe;

/**
 *<#annotation#>
 */
@property (nonatomic , weak) id<SPViperView,SPMainListViewProtocol>  view;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id<SPViperInteractor,SPMainListInteractorInput>  interactor;

/**
 *<#annotation#>
 */
//@property (nonatomic , strong) id<>  *<#name#>;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) UITableViewBusiness  *tableViewBusiness;

@end

@implementation SPMainListVeiwPresenter
- (UITableViewBusiness *)tableViewBusiness
{
    if (nil == _tableViewBusiness) {
        _tableViewBusiness = [[UITableViewBusiness alloc] init];
    }
    return _tableViewBusiness;
}
- (void)handlerViewReady
{
    
}
- (void)handlerViewRemoved
{
    
}
- (void)handlerViewWillAppear:(BOOL)animated
{
    
}
- (void)handlerViewDidAppear:(BOOL)animated
{
    
}
- (void)handlerViewWillDisappear:(BOOL)animated
{
    
}
- (void)handlerViewDidDisappear:(BOOL)animated
{
    
}
- (void)handlerViewDidLoad
{
    [self.interactor loadAllMainListData];
}
- (void)tableViewCellClickWithModel:(LSPModel *)model
{
    [self.wireframe pushViewControllerWithModel:model FromViewController:self.view animated:YES];
}

- (void)refreshMainListCellWithArray:(NSArray *)listArray
{
    [self.view refreshDataWithArray:listArray];
}
- (void)loadErrorPage
{
    
}
- (void)loadEmptyPage
{
    
}

/*
- (NSArray *)getListData
{
  return self.interactor fetch
}
*/
#pragma mark UIViewControllerPreviewingDelegate

- (nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location {
 
    return nil;
}
@end
