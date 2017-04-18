//
//  ECOClass.m
//  EOCTimer
//
//  Created by 藏银 on 2017/4/17.
//  Copyright © 2017年 藏银. All rights reserved.
//

#import "ECOClass.h"

@interface ECOClass()

@property (nonatomic, strong) NSTimer *pollTimer;

@end

@implementation ECOClass

- (void)startPolling {
    self.pollTimer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                      target:self
                                                    selector:@selector(p_doPoll:)
                                                    userInfo:nil
                                                     repeats:YES];
}

- (void)stopPolling {
    [self.pollTimer invalidate];
    self.pollTimer = nil;
}

- (void)p_doPoll:(id)timer {
    NSLog(@"do poll");
}

- (void)dealloc {
    [self stopPolling];
}

@end
