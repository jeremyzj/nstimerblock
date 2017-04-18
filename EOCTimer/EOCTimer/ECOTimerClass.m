//
//  ECOTimerClass.m
//  EOCTimer
//
//  Created by 藏银 on 2017/4/18.
//  Copyright © 2017年 藏银. All rights reserved.
//

#import "ECOTimerClass.h"
#import "NSTimer+ECO.h"

@interface ECOTimerClass()

@property (nonatomic, strong) NSTimer *pollTimer;

@end

@implementation ECOTimerClass

- (void)startPolling {
    __weak ECOTimerClass *weakSelf = self;
    self.pollTimer = [NSTimer eco_scheduledTimerWithTimeInterval:2.0
                                                         repeats:YES
                                                           block:^(NSTimer *timer) {
                                                                __strong ECOTimerClass *strongSelf = weakSelf;
                                                                [strongSelf p_doPoll:timer];
                                                            }];
}

- (void)stopPolling {
    [self.pollTimer invalidate];
    self.pollTimer = nil;
}

- (void)p_doPoll:(id)timer {
    NSLog(@"do poll ok");
}

- (void)dealloc {
    [self stopPolling];
}

@end
