//
//  QKTableViewConrner.h
//  QK365
//
//  Created by Sunny on 4/5/18.
//  Copyright © 2018年 qk365. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QKTableViewConrner : NSObject

/** table cell 圆角显示 */
+(void)cornertableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;

@end
