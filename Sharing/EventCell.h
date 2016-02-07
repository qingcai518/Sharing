//
//  EventCell.h
//  Sharing
//
//  Created by user on 2016/02/05.
//  Copyright © 2016年 user. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"
#import "AppConstants.h"
#import "AppUtility.h"
#import "UIFont+AppFont.h"
#import "UIColor+AppColor.h"

@interface EventCell : UITableViewCell
- (void) setContents:(NSDictionary *)eventDic;
@property (nonatomic, assign) CGFloat height;
@end
