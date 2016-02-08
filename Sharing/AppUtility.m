//
//  AppUtility.m
//  Sharing
//
//  Created by user on 2016/02/05.
//  Copyright © 2016年 user. All rights reserved.
//

#import "AppUtility.h"

@implementation AppUtility

+ (UILabel *) createLabelWarpping:(NSString *)text textFont:(UIFont *)font x:(CGFloat)x y:(CGFloat)y w:(CGFloat)w {
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    [label setNumberOfLines:0];
    label.font = font;
    CGSize constraint = CGSizeMake(w, CGFLOAT_MAX);
    CGSize size = [text boundingRectWithSize:constraint options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
    [label setFrame:CGRectMake(x, y, size.width, size.height)];
    return label;
}
@end
