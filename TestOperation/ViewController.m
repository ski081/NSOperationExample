//
//  ViewController.m
//  TestOperation
//
//  Created by Mark Struzinski on 10/31/12.
//  Copyright (c) 2012 BobStruzSoftware. All rights reserved.
//

#import "ViewController.h"
#import "TestOperation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(operationDone)
                                                 name:@"operationDone"
                                               object:nil];
}

- (IBAction)startOperationButtonTapped:(id)sender {
    self.testQueue = [[NSOperationQueue alloc] init];
    TestOperation *operation = [[TestOperation alloc] init];
    operation.queueName = @"testqueue";
    
    [self.testQueue addOperation:operation];
}

-(void)operationDone{
    self.doneLabel.hidden = NO;
}

@end
