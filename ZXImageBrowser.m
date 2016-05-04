//
//  ZXImageBrowser.m
//  iPhoneDS
//
//  Created by pro on 16/5/4.
//  Copyright © 2016年 Founder. All rights reserved.
//

#import "ZXImageBrowser.h"

@implementation ZXImageBrowser

+ (void)showImage:(UIImage *)image
{

    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    
    UIView *backgroundView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];

    backgroundView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.7];
    backgroundView.alpha = 1;
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,150, SCREEN_WIDTH, 250)];
    imageView.image = image;
    imageView.tag = 1;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.clipsToBounds = YES;
    [backgroundView addSubview:imageView];
    [window addSubview:backgroundView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hideImage:)];
    [backgroundView addGestureRecognizer: tap];
    
}

+ (void)hideImage:(UITapGestureRecognizer*)tap
{
    UIView *backgroundView  =  tap.view;
    
    [backgroundView removeFromSuperview];
    
    backgroundView.alpha = 0;
    
}

@end
