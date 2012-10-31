//
//  ViewController.h
//  TestOperation
//
//  Created by Mark Struzinski on 10/31/12.
//  Copyright (c) 2012 BobStruzSoftware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *doneLabel;
@property(nonatomic,strong) NSOperationQueue *testQueue;

@end
