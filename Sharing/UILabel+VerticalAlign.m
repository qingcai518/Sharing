//
//  UILabel+VerticalAlign.m
//  Sharing
//
//  Created by 張艶斉 on 2016/02/07.
//  Copyright © 2016年 user. All rights reserved.
//

#import "UILabel+VerticalAlign.h"

@implementation UILabel (VerticalAlign)
-(void)alignTop {
    CGSize fontSize = [self.text sizeWithAttributes:@{NSFontAttributeName:self.font}];
    double finalHeight = fontSize.height *self.numberOfLines;
    double finalWidth =self.frame.size.width;
    CGSize theStringSize = [self.text boundingRectWithSize:CGSizeMake(finalWidth, finalHeight)
                                                   options:NSStringDrawingUsesLineFragmentOrigin
                                                attributes:@{NSFontAttributeName:self.font}
                                                   context:nil].size;
    
    int newLinesToPad =(finalHeight - theStringSize.height)/ fontSize.height;
    for(int i=0; i<newLinesToPad; i++)
        self.text =[self.text stringByAppendingString:@"\n "];
}

-(void)alignBottom {
    CGSize fontSize = [self.text sizeWithAttributes:@{NSFontAttributeName:self.font}];
    double finalHeight = fontSize.height *self.numberOfLines;
    double finalWidth =self.frame.size.width;//expected width of label
    CGSize theStringSize = [self.text boundingRectWithSize:CGSizeMake(finalWidth, finalHeight)
                                                   options:NSStringDrawingUsesLineFragmentOrigin
                                                attributes:@{NSFontAttributeName:self.font}
                                                   context:nil].size;
    int newLinesToPad =(finalHeight - theStringSize.height)/ fontSize.height;
    for(int i=0; i<newLinesToPad; i++)
        self.text =[NSString stringWithFormat:@" \n%@",self.text];
}
@end
