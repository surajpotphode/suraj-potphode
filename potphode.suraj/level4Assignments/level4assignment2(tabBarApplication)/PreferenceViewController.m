//
//  PreferenceViewController.m
//  level4assignment2(tabBarApplication)
//
//  Created by Mindstix Software on 30/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "PreferenceViewController.h"

@interface PreferenceViewController ()
@property NSArray *preferArray;
@end

@implementation PreferenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.opaque = NO;
    self.tableView.backgroundView = nil;
    [self.tableView setBackgroundColor:[UIColor clearColor]];
    [self.tableView setFrame: self.tableView.frame];
    //UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"wallpaper5.jpg"]];
    //self.tableView.backgroundColor = background;
    self.preferArray = [[NSArray alloc] initWithObjects:@"Preference 1",@"Preference 2",@"Preference 3", nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.preferArray count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"reuseCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:MyIdentifier];
    }
    cell.textLabel.text = [self.preferArray objectAtIndex:indexPath.row];
    [[cell contentView] setBackgroundColor:[UIColor clearColor]];
    [[cell backgroundView] setBackgroundColor:[UIColor clearColor]];
    [cell setBackgroundColor:[UIColor clearColor]];
    // Here we use the provided setImageWithURL: method to load the web image
    // Ensure you use a placeholder image otherwise cells will be initialized with no image
    
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
