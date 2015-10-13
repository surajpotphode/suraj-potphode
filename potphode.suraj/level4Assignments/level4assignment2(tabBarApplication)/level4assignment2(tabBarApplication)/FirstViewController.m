//
//  FirstViewController.m
//  level4assignment2(tabBarApplication)
//
//  Created by Mindstix Software on 29/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstTableViewCell.h"

@interface FirstViewController ()
@property NSArray *imagesArray;
@property NSArray *labelsArray;
@property UILabel *nameLabel;
@property UIImageView *image;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _imagesArray = [[NSArray alloc] initWithObjects:@"furniture.jpg",@"health_products.jpg",@"basket.jpg",@"cosmetics.jpg",@"home_appliances.jpg", nil];
    _labelsArray = [[NSArray alloc] initWithObjects:@"Furniture",@"Health products",@"Basket",@"Cosmetics",@"Home appliances", nil];
    // Do any additional setup after loading the view, typically from a nib.
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
    
    return [_labelsArray count];    //count number of row from counting array hear cataGorry is An Array
}



- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"homeCell";
    
    FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil)
    {
        cell = [[FirstTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:MyIdentifier];
    }
//    self.nameLabel = (UILabel *)[cell viewWithTag:1];
//    self.image = (UIImageView *)[cell viewWithTag:2];
    
//    self.nameLabel.text = [_labelsArray objectAtIndex:indexPath.row];
//    self.image.image = [UIImage imageNamed:[_imagesArray objectAtIndex:indexPath.row]];
    cell.customImageView.image = [UIImage imageNamed:[self.imagesArray objectAtIndex:indexPath.row]];
    cell.customImageLabel.text = [self.labelsArray objectAtIndex:indexPath.row];
    
    // Here we use the provided setImageWithURL: method to load the web image
    // Ensure you use a placeholder image otherwise cells will be initialized with no image
    
    return cell;
}

@end
