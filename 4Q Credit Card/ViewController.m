//
//  ViewController.m
//  4Q Credit Card
//
//  Created by Tony Xu on 7/23/17.
//  Copyright © 2017 Tony Xu. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
- (IBAction)contactSupport:(UIButton *)sender;
- (IBAction)dialHotline:(UIButton *)sender;
- (IBAction)logout:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)contactSupport:(UIButton *)sender {
//    [self startNewChat];
    NSString *customURL = @"ct-companion://";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:customURL]];
}

- (IBAction)dialHotline:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://6823053958"]];
    NSLog(@"dial");
}

- (IBAction)logout:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
