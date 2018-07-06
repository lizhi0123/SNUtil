//
//  WKWebView+Post.h
//  QK365
//
//  Created by Sunny on 19/6/18.
//  Copyright © 2018年 qk365. All rights reserved.
//

#import <WebKit/WebKit.h>

@interface WKWebView (Post)

/** post 网络请求参数 */
-(void)requestPostWithUrl:(NSString *)url param:(NSDictionary *)postParam;

@end
