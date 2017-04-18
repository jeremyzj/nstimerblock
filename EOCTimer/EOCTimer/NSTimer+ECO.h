//
//  ECONoCircleClass.h
//  EOCTimer
//
//  Created by 藏银 on 2017/4/18.
//  Copyright © 2017年 藏银. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer(ECO)

+ (NSTimer *)eco_scheduledTimerWithTimeInterval:(NSTimeInterval)inerval
                                        repeats:(BOOL)repeats
                                          block:(void(^)(NSTimer *timer))block;

@end
