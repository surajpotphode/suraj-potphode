//
//  ViewController.m
//  lvl2ass2(composeMail)
//
//  Created by Mindstix Software on 24/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)composeMail:(id)sender {
    
    UIViewController *viewController = [[self storyboard] instantiateViewControllerWithIdentifier:@"sendMail"];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:viewController];
    [self.navigationController pushViewController:navi animated:YES];
    
}
@end
