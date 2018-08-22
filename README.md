# SNUtil
ios 工具集合类


##### 1.NSDictionaryArray_utf8Description 
> NSDictionaryArray_utf8Description   NSDictionary NSArray utf8 显示中文 在调试的时候用。

#####  2. WKWebViewPost
>  WKWebViewPost WKWebView 支持 Post 操作。 实现方式：先插入js ,然后在js 里显示 post 请求。

#### 3. UITableView 圆角显示

使用方法:
```
// 重新绘制cell边框
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [QKTableViewConrner cornertableView:tableView willDisplayCell:cell forRowAtIndexPath:indexPath];
        
}
```

实现原理  划圆。

