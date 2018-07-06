//
//  WKWebView+Post.m
//  QK365
//
//  Created by Sunny on 19/6/18.
//  Copyright © 2018年 qk365. All rights reserved.
//

#import "WKWebView+Post.h"

@implementation WKWebView (Post)

#define POST_JS @"function my_post(path, params) {\
var method = \"POST\";\
var form = document.createElement(\"form\");\
form.setAttribute(\"method\", method);\
form.setAttribute(\"action\", path);\
for(var key in params){\
if (params.hasOwnProperty(key)) {\
var hiddenFild = document.createElement(\"input\");\
hiddenFild.setAttribute(\"type\", \"hidden\");\
hiddenFild.setAttribute(\"name\", key);\
hiddenFild.setAttribute(\"value\", params[key]);\
}\
form.appendChild(hiddenFild);\
}\
document.body.appendChild(form);\
form.submit();\
}"

/** post 网络请求参数 */
-(void)requestPostWithUrl:(NSString *)url param:(NSDictionary *)postParam{
    if (!postParam) {
        return ;
    }
    // 要传递的参数，（在开发中可以字典转成json字符串即可）
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:postParam
                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
                                                         error:nil];
    if (!jsonData) {
        return ;
    }
    NSString * dataStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    if (!dataStr) {
        return ;
    }
//    NSString *enCodeStr = [dataStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    // 发送的地址
    // 最终要执行的JS代码
    NSString * js = [NSString stringWithFormat:@"%@my_post(\"%@\", %@)",POST_JS,url,dataStr];
    // 执行JS代码
    [self evaluateJavaScript:js completionHandler:nil];
}

@end
