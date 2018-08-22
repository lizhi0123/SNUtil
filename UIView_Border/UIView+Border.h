//
//  UIView+Border.h
//  QK365
//
//  Created by Sunny on 3/11/17.
//  Copyright © 2017年 qk365. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 设置View 的圆角边框
 */
@interface UIView (Border)

//* 边线颜色 */
@property (nonatomic, strong) IBInspectable UIColor *borderColor;
//* 边线宽度 */
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
//* 圆角半径 */
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

@end
