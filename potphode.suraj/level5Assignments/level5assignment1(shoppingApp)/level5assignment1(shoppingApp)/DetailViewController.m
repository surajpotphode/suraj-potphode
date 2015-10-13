//
//  DetailViewController.m
//  level5assignment1(shoppingApp)
//
//  Created by Mindstix Software on 05/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "DetailViewController.h"
#import "ProductDetailsViewController.h"

@interface DetailViewController ()

@property NSArray *productArray;
@property NSMutableArray *imageArray;
@property NSMutableArray *nameArray;
@property NSMutableArray *priceArray;
@property UILabel *cellNameLabel;
@property UILabel *cellPriceLabel;
@property UIImageView *cellImage;

@end


@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.productArray = [self.categoryDict objectForKey:@"product"];
    NSDictionary *dic;
    NSString *name;
    self.nameArray = [[NSMutableArray alloc]init];
    self.imageArray = [[NSMutableArray alloc]init];
    self.priceArray = [[NSMutableArray alloc]init];
    for (int i=0; i<self.productArray.count; i++) {
        dic = [self.productArray objectAtIndex:i];
        name = [dic objectForKey:@"name"];
        [self.imageArray addObject:[dic objectForKey:@"image"]];
        [self.priceArray addObject:[dic objectForKey:@"price"]];
        [self.nameArray addObject:name];
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.productArray count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"itemCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    self.cellImage = (UIImageView *) [cell viewWithTag:2];
    self.cellNameLabel = (UILabel *) [cell viewWithTag:11];
    self.cellPriceLabel = (UILabel *) [cell viewWithTag:12];
    self.cellNameLabel.text = self.nameArray[indexPath.row];
    self.cellPriceLabel.text = self.priceArray[indexPath.row];
    self.cellImage.image = [UIImage imageNamed:self.imageArray[indexPath.row]];
    //cell.textLabel.text = _categoryArray[indexPath.row];
    return cell;
}
/*
#pragma mark - Navigation */

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"productDetails"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ProductDetailsViewController *destViewController = segue.destinationViewController;
        //NSMutableArray *array2 = [_categoryList objectForKey:@"categories"];
        //destViewController.selectedObject = [array2 objectAtIndex:indexPath.row];
        destViewController.itemDict = [self.productArray objectAtIndex:indexPath.row];
        destViewController.title = [self.nameArray objectAtIndex:indexPath.row];
    }
}


@end
