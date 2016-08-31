//
//  ViewController.m
//  PopoverColorTesting
//
//  Created by Hamming, Tom on 8/30/16.
//  Copyright © 2016 Olive Tree Bible Software. All rights reserved.
//

#import "ViewController.h"
#import "PopoverViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
}

-(void)onPopover:(id)sender
{
    UIView *view = (UIView *)sender;
    PopoverViewController *vc = [[PopoverViewController alloc]initWithNibName:nil bundle:nil];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    nav.modalPresentationStyle = UIModalPresentationPopover;
    nav.popoverPresentationController.sourceView = view.superview;
    nav.popoverPresentationController.sourceRect = view.frame;
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
