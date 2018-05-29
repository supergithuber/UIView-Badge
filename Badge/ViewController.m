//
//  ViewController.m
//  Badge
//
//  Created by HFY on 2018/5/29.
//  Copyright © 2018年 wuxi. All rights reserved.
//

#import "ViewController.h"
#import "UIView+WXBadge.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupView{
    //1:view
    UIView *greenView = [UIView new];
    greenView.backgroundColor = [UIColor greenColor];
    greenView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:greenView];
    [greenView wx_showBadge:@"hello"];
    //2:button
    UIButton *yellowButton = [UIButton buttonWithType:UIButtonTypeCustom];
    yellowButton.backgroundColor = [UIColor yellowColor];
    yellowButton.frame = CGRectMake(100, 250, 50, 50);
    [self.view addSubview:yellowButton];
    [yellowButton wx_showBadge:@"1"];
    
    dispatch_time_t delayTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
    dispatch_after(delayTime, dispatch_get_main_queue(), ^{
        WXBadgeAppearance *appearance = [WXBadgeAppearance new];
        appearance.backgroundColor = UIColor.blueColor;
        [yellowButton wx_showBadge:@"hahahaha" appearance:appearance];
    });
    //3:button
    UIButton *blueButton = [UIButton buttonWithType:UIButtonTypeCustom];
    blueButton.backgroundColor = [UIColor blueColor];
    blueButton.frame = CGRectMake(100, 350, 70,70);
    [self.view addSubview:blueButton];
    [blueButton wx_showBadge:@"blueButton"];
    
    dispatch_after(delayTime, dispatch_get_main_queue(), ^{
        WXBadgeAppearance *appearance = [WXBadgeAppearance new];
        appearance.backgroundColor = [UIColor lightGrayColor];
        [blueButton wx_showBadge:nil];
    });
    
}

@end
