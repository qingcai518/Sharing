//
//  MyTabController.m
//  MyEvent
//
//  Created by user on 2016/01/18.
//  Copyright © 2016年 user. All rights reserved.
//

#import "MyTabController.h"

@interface MyTabController ()

@end

@implementation MyTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    EventViewController *vc1 = [[EventViewController alloc]init];
    vc1.tabBarItem.title=@"活动";
    vc1.tabBarItem.image=[UIImage imageNamed:@"football.png"];
    
    NearbyViewController *vc2 = [[NearbyViewController alloc]init];
    vc2.tabBarItem.title=@"附近";
    vc2.tabBarItem.image=[UIImage imageNamed:@"nearby.png"];
    
    MessageViewController *vc3 = [[MessageViewController alloc]init];
    vc3.tabBarItem.title=@"私信";
    vc3.tabBarItem.image=[UIImage imageNamed:@"message.png"];
    vc3.tabBarItem.badgeValue=@"11";

    ProfileViewController *vc4=[[ProfileViewController alloc]init];
    vc4.view.backgroundColor=[UIColor brownColor];
    vc4.tabBarItem.title=@"我的";
    vc4.tabBarItem.image=[UIImage imageNamed:@"profile.png"];
    
    self.viewControllers = @[vc1, vc2, vc3, vc4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
