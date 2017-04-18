//
//  ECONoCircleClass.m
//  EOCTimer
//
//  Created by 藏银 on 2017/4/18.
//  Copyright © 2017年 藏银. All rights reserved.
//

#import "NSTimer+ECO.h"

@implementation NSTimer(ECO)

+ (NSTimer *)eco_scheduledTimerWithTimeInterval:(NSTimeInterval)inerval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block{
    
    return [NSTimer scheduledTimerWithTimeInterval:inerval
                                            target:self
                                          selector:@selector(eco_blcokInvoke:)
                                          userInfo:[block copy]
                                           repeats:repeats];
}

+ (void)eco_blcokInvoke:(NSTimer *)timer {
    
    void (^block)(NSTimer *timer) = timer.userInfo;
    
    if (block) {
        block(timer);
    }
}

@end

