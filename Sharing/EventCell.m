//
//  EventCell.m
//  Sharing
//
//  Created by user on 2016/02/05.
//  Copyright © 2016年 user. All rights reserved.
//

#import "EventCell.h"

@implementation EventCell
CGFloat minHeight = 80;
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
    userImageView.contentMode = UIViewContentModeScaleAspectFill;
    userImageView.clipsToBounds = YES;
    [self addSubview:userImageView];
    
    CGFloat posX = CGRectGetMaxX(userImageView.frame) + 10;
    CGFloat width = screenWidth - posX - 10;
    
    NSString *userName = [eventDic valueForKey:KEY_USERNAME];
    UILabel *userNameLbl = [AppUtility createLabelWarpping:userName textFont:[UIFont fontMini] x:posX y:10 w:width];
    [self addSubview:userNameLbl];
    
    NSString *eventName = [eventDic valueForKey:KEY_EVENTNAME];
    UILabel *eventNameLbl = [AppUtility createLabelWarpping:eventName textFont:[UIFont fontBig] x:posX y:CGRectGetMaxY(userNameLbl.frame) + 5 w:width];
    [eventNameLbl alignTop];
    [self addSubview:eventNameLbl];
    
    CGFloat currentHeight = CGRectGetMaxY(eventNameLbl.frame) + 10;
    self.height = currentHeight > minHeight ? currentHeight : minHeight;
    
    NSString *eventImagePath = [eventDic valueForKey:KEY_EVENTIMAGE];
    if (eventImagePath != nil && ([eventImagePath isEqualToString:@""] == NO)) {
        UIImageView *eventImageView = [[UIImageView alloc]init];
        [eventImageView sd_setImageWithURL:[NSURL URLWithString:eventImagePath]
                          placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
        [eventImageView setFrame:CGRectMake(posX, CGRectGetMaxY(eventNameLbl.frame) + 5, width, eventImageView.image.size.height)];
        eventImageView.contentMode = UIViewContentModeScaleAspectFill;
        eventImageView.clipsToBounds = YES;
        [self addSubview:eventImageView];
        
        self.height = CGRectGetMaxY(eventImageView.frame) + 10;
    }
    
    self.height += 10;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
