//
//  TimeFormatUtils.h
//  CoreVideo
//
//  Created by apple on 15/9/13.
//  Copyright (c) 2015年 cn.lztech  合肥联正电子科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeFormatUtils : NSObject

+(NSString *)stringFromSeconds:(int)seconds;
+(NSString *)stringDateFormat:(NSDate *)date;

@end
