//
//  MyViewController.m
//  Assignment1Page1
//
//  Created by Mindstix Software on 07/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "MyViewController.h"
#import "CustomCell.h"

@interface MyViewController ()
@property NSArray *imageArray;
@property NSArray *titleArray;
@property NSArray *tagArray;
@property NSArray *newsArray;
@property NSArray *eventsArray;
@property NSArray *volunteerArray;
@property NSArray *favoriteArray;
@end

@implementation MyViewController

@synthesize customTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageArray = [[NSArray alloc] initWithObjects:@"00_0005_logo.png",@"00_0004_logo-(1).png",@"00_0003_EllieFund_Logo2.png",@"00_0002_AS-logo-CHICAGO_0.png", nil];
    self.favoriteArray = [[NSArray alloc] initWithObjects:@"00_0001_favorite4.png",@"00_0000_favorite4-copy-2.png",@"00_0000_favorite4-copy-2.png",@"00_0001_favorite4.png", nil];
    self.titleArray = [[NSArray alloc] initWithObjects:@"United Way",@"Good Sports",@"Ellie Fund",@"All Stars Project", nil];
    self.tagArray = [[NSArray alloc] initWithObjects:@"We bring people together to make great things happen.",@"Every child deserves a chance to experience the benifits of playing",@"Leading the way. Providing the hope. Funding the care.",@"Shine brighter.", nil];
    self.newsArray = [[NSArray alloc] initWithObjects:@"213",@"113",@"222",@"222", nil];
    self.eventsArray = [[NSArray alloc] initWithObjects:@"50",@"100",@"50",@"50", nil];
    self.volunteerArray = [[NSArray alloc] initWithObjects:@"100",@"50",@"100",@"100", nil];
    // Do any additional setup after loading the view.
}

-(void)viewDidAppear {
    [customTableView reloadData];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.imageArray count];    //count number of row from counting array hear cataGorry is An Array
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"CellId";
    
    CustomCell *cell = [customTableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil)
    {
        cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier];
    }
    cell.title.text = [self.titleArray objectAtIndex:indexPath.row];
    cell.tag.text = [self.tagArray objectAtIndex:indexPath.row];
    cell.image.image = [UIImage imageNamed:[self.imageArray objectAtIndex:indexPath.row]];
    [cell.favorite setImage:[UIImage imageNamed:[self.favoriteArray objectAtIndex:indexPath.row]] forState:UIControlStateNormal];
    cell.favorite.titleLabel.hidden = true;
    [cell.favorite setTitle:[self.favoriteArray objectAtIndex:indexPath.row] forState:UIControlStateNormal];
    cell.newsNumber.text = [self.newsArray objectAtIndex:indexPath.row];
    cell.eventsNumber.text = [self.eventsArray objectAtIndex:indexPath.row];
    cell.volunteerNumber.text = [self.volunteerArray objectAtIndex:indexPath.row];
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

- (IBAction)favoriteButtonClick:(id)sender {
    UIButton *favoriteButton = (UIButton *)sender;
    if ([favoriteButton.currentTitle isEqualToString:@"00_0000_favorite4-copy-2.png"]) {
        [favoriteButton setImage:[UIImage imageNamed:@"00_0001_favorite4.png"] forState:UIControlStateNormal];
        [favoriteButton setTitle:@"00_0001_favorite4.png" forState:UIControlStateNormal];
    }
    else{
        [favoriteButton setImage:[UIImage imageNamed:@"00_0000_favorite4-copy-2.png"] forState:UIControlStateNormal];
        [favoriteButton setTitle:@"00_0000_favorite4-copy-2.png" forState:UIControlStateNormal];
    }
    //[self viewWillAppear:NO];
    //[self viewDidAppear];
    }

@end
