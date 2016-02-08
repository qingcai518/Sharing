//
//  EventViewController.h
//  Sharing
//
//  Created by user on 2016/02/05.
//  Copyright © 2016年 user. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventCell.h"
#import "UITableView+DragLoad.h"

@interface EventViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UITableViewDragLoadDelegate>
@property (nonatomic, strong) NSArray* contents;
@property (nonatomic, strong) UITableView *tableView;
@end
