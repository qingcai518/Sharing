//
//  AppUtility.h
//  Sharing
//
//  Created by user on 2016/02/05.
//  Copyright © 2016年 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppUtility : NSObject
//+ (UILabel *) createLabelWarpping: (NSString *)text x:(CGFloat)x y:(CGFloat)y w:(CGFloat)w h:(CGFloat)h font:(UIFont *)font textColor:(UIColor *)textColor bkColor:(UIColor *)bkColor align:(NSTextAlignment)align;
+ (UILabel *) createLabelWarpping:(NSString *)text textFont:(UIFont *)font x:(CGFloat)x y:(CGFloat)y w:(CGFloat)w;
@end
