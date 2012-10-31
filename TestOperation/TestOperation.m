//
//  TestOperation.m
//  TestOperation
//
//  Created by Mark Struzinski on 10/31/12.
//  Copyright (c) 2012 BobStruzSoftware. All rights reserved.
//

#import "TestOperation.h"

@implementation TestOperation

-(void)main{
    for (int x = 0; x <= 10; x++) {
        int64_t delayInSeconds = 2.0;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            NSLog(@"Running count number in long running operation %i from queue: %@",x,self.queueName);
        });
    }
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"operationDone"
                                                        object:nil];
}

@end
