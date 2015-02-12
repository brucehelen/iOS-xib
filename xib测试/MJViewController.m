//
//  MJViewController.m
//  xib测试
//
//  Created by 朱正晶 on 15/2/12.
//  Copyright (c) 2015年 China. All rights reserved.
//

#import "MJViewController.h"

@interface MJViewController ()

@property MJDog *myDog;
@end

@implementation MJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _myDog = [[MJDog alloc] init];
	
    NSArray * array = [[NSBundle mainBundle] loadNibNamed:@"MyView" owner: _myDog options:nil];
    UIView *view = array[0];
    view.center = CGPointMake(self.view.frame.size.width * 0.5, 100);
    UIButton *button = (UIButton*)[view viewWithTag:10];
    [button addTarget:_myDog action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:view];
}

- (void) btnClick
{
    NSLog(@"btnClick---");
}


@end
