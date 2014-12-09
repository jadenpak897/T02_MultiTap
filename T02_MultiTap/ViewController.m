//
//  ViewController.m
//  T02_MultiTap
//
//  Created by wjpak on 12/9/14.
//  Copyright (c) 2014 jdp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myLabel1, myLabel2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)actionInit:(id)sender
{
    self.myLabel1.text = @"";
    self.myLabel2.text = @"";
}


#pragma mark - touch event handling methods
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *myTouch = [touches anyObject];
    
    switch ([myTouch tapCount]) {
        case 1:
            [self performSelector:@selector(singleTap) withObject:nil afterDelay:0.5];
            
            break;
            
        case 2:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(singleTap) object:nil];
            
            [self performSelector:@selector(doubleTap) withObject:nil afterDelay:0.5];
            break;
            
        default:
            break;
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}


#pragma mark -
- (void)singleTap
{
    self.myLabel1.text = @"Single Tap";
}

- (void)doubleTap
{
    self.myLabel2.text = @"Double Tap";
}


@end
