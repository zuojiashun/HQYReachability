//
//  HQYTabBarController.m
//  选项卡控制器的底层实现
//
//  Created by 江城程序猿 on 16/7/3.
//  Copyright © 2016年 江城程序猿. All rights reserved.
//

#import "HQYTabBarController.h"

@interface HQYTabBarController ()
/** 底部选项卡 */
@property (nonatomic,weak) UIView *tabBar;

@end

@implementation HQYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *tabBar = [[UIView alloc] init];
    self.tabBar = tabBar;
    
    CGFloat x = 0;
    CGFloat y = [UIScreen mainScreen].bounds.size.height - 49;
    CGFloat w = [UIScreen mainScreen].bounds.size.width;
    CGFloat h = 49;
    tabBar.frame = CGRectMake(x, y, w, h);

    [self.view addSubview:tabBar];
    
    [self setButtonForTabBar];
}

// viewWillAppear方法比viewDidLoad方法先调用,必须在viewWillAppear方法中添加按钮
- (void)setButtonForTabBar{

    NSInteger count = self.childViewControllers.count;
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = [UIScreen mainScreen].bounds.size.width / count;
    CGFloat h = 49;
    for (NSInteger i = 0; i < count; ++i) {

        x = w * i;
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(x, y, w, h);
        [self.tabBar addSubview:btn];
        
        UIViewController *vc = self.childViewControllers[i];

        [btn setTitle:vc.title forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    }
}

@end