//
//  EventCell.m
//  Sharing
//
//  Created by user on 2016/02/05.
//  Copyright © 2016年 user. All rights reserved.
//

#import "EventCell.h"

@implementation EventCell

- (void) setContents:(NSDictionary *)eventDic {
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    NSString *userImagePath = [eventDic valueForKey:KEY_USERIMAGE];
    UIImageView *userImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
    [userImageView sd_setImageWithURL:[NSURL URLWithString:userImagePath]
                     placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    userImageView.layer.cornerRadius = userImageView.frame.size.width / 2;
    userImageView.clipsToBounds = YES;
    userImageView.layer.borderWidth = 3.0f;
    userImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    userImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:userImageView];
    
    NSString *userName = [eventDic valueForKey:KEY_USERNAME];
    UILabel *userNameLbl = [AppUtility createLabelWarpping:userName x:10 y:CGRectGetMaxY(userImageView.frame) w:50 h:20 font:[UIFont fontMini] textColor:nil bkColor:nil align:NSTextAlignmentCenter];
    [self addSubview:userNameLbl];
    
    CGFloat posX = CGRectGetMaxX(userNameLbl.frame) + 10;
    NSString *eventName = [eventDic valueForKey:KEY_EVENTNAME];
    UILabel *eventNameLbl = [AppUtility createLabelWarpping:eventName x:posX y:10 w:screenWidth - posX - 10 h:60 font:[UIFont fontBig] textColor:nil bkColor:nil align:NSTextAlignmentLeft];
    [eventNameLbl alignTop];
    [self addSubview:eventNameLbl];
    
    self.height = 90;
    
    NSString *eventImagePath = [eventDic valueForKey:KEY_EVENTIMAGE];
    if (eventImagePath != nil && ([eventImagePath isEqualToString:@""] == NO)) {
        UIImageView *eventImageView = [[UIImageView alloc]initWithFrame:CGRectMake(posX, CGRectGetMaxY(eventNameLbl.frame), screenWidth - 80, 100)];
        [eventImageView sd_setImageWithURL:[NSURL URLWithString:eventImagePath]
                          placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
        eventImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:eventImageView];
        
        self.height = CGRectGetMaxY(eventImageView.frame) + 10;
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
