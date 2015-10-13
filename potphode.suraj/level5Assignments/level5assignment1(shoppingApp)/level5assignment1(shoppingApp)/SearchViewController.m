//
//  SearchViewController.m
//  level5assignment1(shoppingApp)
//
//  Created by Mindstix Software on 01/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@property (strong, nonatomic) IBOutlet UISearchBar *candySearchBar;

@end


@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self.candySearchBar resignFirstResponder];
}

@end
