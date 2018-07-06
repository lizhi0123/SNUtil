//
//  NSString+Dictionary.m
//  QK365
//
//  Created by Sunny on 2/12/17.
//  Copyright © 2017年 qk365. All rights reserved.
//

#import "NSObject+utf8Description.h"

@implementation NSObject (utf8Description)
/** 把字典 转成UTF8格式 主要用户DEGUG */
-(NSString *)utf8Description{
    if(self){
        if ([self isKindOfClass:[NSDictionary class]] || [self  isKindOfClass:[NSArray class]]) {
            NSData *jsonData=[NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
            NSString *jsonStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
            return jsonStr;
        }else if([self isKindOfClass:[NSObject class]]){
            NSObject *paraObj = self;
            return [paraObj debugDescription];
        }
        
        return nil;
    }
    
    return nil;
}
//-(NSString *)debugDescription{
//    [self utf8Description];
//}
@end
