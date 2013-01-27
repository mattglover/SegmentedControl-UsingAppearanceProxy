//
//  RootViewController.m
//  OrangeSegmentControl
//
//  Created by Matt Glover on 27/01/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@end

@implementation RootViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"Zero", @"One", @"Two", @"Three"]];
  [segmentedControl setFrame:CGRectMake(20, 50, 280, 39)];
  [segmentedControl addTarget:self action:@selector(segmentedControlValueChanged:) forControlEvents:UIControlEventValueChanged];
  [self.view addSubview:segmentedControl];
}

- (void)segmentedControlValueChanged:(UISegmentedControl *)sender {
  NSLog(@"Selected Index : %d", sender.selectedSegmentIndex);
}

@end
