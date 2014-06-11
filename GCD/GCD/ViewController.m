//
//  ViewController.m
//  GCD
//
//  Created by Ryan Tiltz on 6/11/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSArray *array1 = @[@1, @2, @3, @4, @5, @6, @7, @8, @9, @10];
    NSArray *array2 = @[@1, @2, @3, @4, @5, @6, @7, @8, @9, @10];

    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);

    dispatch_async(queue, ^{
        for (NSNumber *num in array1)
        {
            NSLog(@"element in array1: %@", num);
             sleep(arc4random_uniform(5));
        }
             });
    dispatch_async(queue, ^{
        for (NSNumber *num in array2)
        {
            NSLog(@"element in array2: %@", num);
            sleep(arc4random_uniform(5));
        }
    });
}
- (IBAction)onMakeAppCrap:(id)sender
{
    sleep(2000);

}

@end
