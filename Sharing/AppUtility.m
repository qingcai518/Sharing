//
//  AppUtility.m
//  Sharing
//
//  Created by user on 2016/02/05.
//  Copyright © 2016年 user. All rights reserved.
//

#import "AppUtility.h"

@implementation AppUtility
+ (UILabel *) createLabelWarpping: (NSString *)text x:(CGFloat)x y:(CGFloat)y w:(CGFloat)w h:(CGFloat)h font:(UIFont *)font textColor:(UIColor *)textColor bkColor:(UIColor *)bkColor align:(NSTextAlignment)align {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(x, y, w, h)];
    label.text = text;
    if (bkColor != nil) {
        label.backgroundColor = bkColor;
    }
    if (textColor != nil) {
        label.textColor = textColor;
    }
    label.font = font;
    label.numberOfLines = 0;
    label.lineBreakMode = NSLineBreakByWordWrapping | NSLineBreakByTruncatingTail;
    label.textAlignment = align;
    return label;
}
@end
