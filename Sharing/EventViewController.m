//
//  EventViewController.m
//  Sharing
//
//  Created by user on 2016/02/05.
//  Copyright © 2016年 user. All rights reserved.
//

#import "EventViewController.h"

@interface EventViewController ()

@end

@implementation EventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectZero];
    title.font = [UIFont boldSystemFontOfSize:16.0];
    title.textColor = [UIColor whiteColor];
    title.text = @"候補一覧";
    [title sizeToFit];
    self.navigationItem.titleView = title;
    
    // dummy
    [self setData];
    
    UIImage *img = [UIImage imageNamed:@"BirthdayParty.jpg"];
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, img.size.height)];
    imgView.image = img;
    imgView.contentMode = UIViewContentModeScaleAspectFill;
    imgView.clipsToBounds = YES;
    [self.view addSubview:imgView];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, img.size.height, width, height - img.size.height - CGRectGetHeight(self.tabBarController.tabBar.frame))];
    tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:tableView];
}

// dummy
- (void)setData {
    NSDictionary *dic1 = @{KEY_USERNAME:@"草帽卡卡", KEY_USERIMAGE:@"http://www.chinacomic.com.cn/zhuanti/ft/images/3S/1/%E5%A4%B4%E5%83%8F1.jpg", KEY_EVENTNAME:@"一緒にランチ食べに行きませんか？", KEY_EVENTIMAGE:@""};
    NSDictionary *dic2 = @{KEY_USERNAME:@"むぎわらのかか", KEY_USERIMAGE:@"http://www.chinacomic.com.cn/zhuanti/ft/images/3S/10/%E5%A4%B4%E5%83%8F2.jpg", KEY_EVENTNAME:@"テスト００１"};
    NSDictionary *dic3 = @{KEY_USERNAME:@"kaka123", KEY_USERIMAGE:@"http://www.chinacomic.com.cn/zhuanti/ft/images/3S/1/%E5%A4%B4%E5%83%8F3.jpg", KEY_EVENTNAME:@"浮間舟渡フットサール練習", KEY_EVENTIMAGE:@"http://shisetsu.jp/city.itabashi/ukimafunado-futsalpark/images/top_img@2x.jpg"};
    NSDictionary *dic4 = @{KEY_USERNAME:@"くいしんぼう", KEY_USERIMAGE:@"http://www.chinacomic.com.cn/zhuanti/ft/images/3S/3/%E5%A4%B4%E5%83%8F2.jpg", KEY_EVENTNAME:@"テスト００２"};
    NSDictionary *dic5 = @{KEY_USERNAME:@"qingcai518", KEY_USERIMAGE:@"http://www.chinacomic.com.cn/zhuanti/ft/images/3S/4/%E5%A4%B4%E5%83%8F1.jpg", KEY_EVENTNAME:@"テスト００３"};
    NSDictionary *dic6 = @{KEY_USERNAME:@"しまじろう", KEY_USERIMAGE:@"http://www.chinacomic.com.cn/zhuanti/ft/images/3S/5/%E5%A4%B4%E5%83%8F4.jpg", KEY_EVENTNAME:@"テスト００４"};
    NSDictionary *dic7 = @{KEY_USERNAME:@"花ちゃん", KEY_USERIMAGE:@"http://www.chinacomic.com.cn/zhuanti/ft/images/3S/5/%E5%A4%B4%E5%83%8F2.jpg", KEY_EVENTNAME:@"テスト００５", KEY_EVENTIMAGE:@"http://d.f-parama.ed.jp/images/material/25/CIMG0689.JPG"};
    NSDictionary *dic8 = @{KEY_USERNAME:@"蓮根さん", KEY_USERIMAGE:@"http://www.chinacomic.com.cn/zhuanti/ft/images/3S/5/%E5%A4%B4%E5%83%8F4.jpg", KEY_EVENTNAME:@"テスト００６", KEY_EVENTIMAGE:@""};
    NSDictionary *dic9 = @{KEY_USERNAME:@"top001", KEY_USERIMAGE:@"http://www.chinacomic.com.cn/zhuanti/ft/images/3S/3/%E5%A4%B4%E5%83%8F1.jpg", KEY_EVENTNAME:@"テスト００７", KEY_EVENTIMAGE:@""};
    NSDictionary *dic10 = @{KEY_USERNAME:@"ALEX", KEY_USERIMAGE:@"http://www.chinacomic.com.cn/zhuanti/ft/images/3S/3/%E5%A4%B4%E5%83%8F3.jpg", KEY_EVENTNAME:@"テスト００８", KEY_EVENTIMAGE:@""};
    
    self.contents = @[dic1, dic2, dic3, dic4, dic5, dic6, dic7, dic8, dic9, dic10];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    return [self getCell:(int)indexPath.row tableView:tableView];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    EventCell *cell = [self getCell:(int)indexPath.row tableView:tableView];
    return cell.height;
}

- (EventCell *)getCell:(int)index tableView:(UITableView *)tableView {
    EventCell *cell  = [[EventCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    NSDictionary *dic = self.contents[index];
    [cell setContents:dic];
    return cell;
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
