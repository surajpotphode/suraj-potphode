//
//  WishViewController.m
//  level5assignment1(shoppingApp)
//
//  Created by Mindstix Software on 01/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "WishViewController.h"
#import "MySingleton.h"

@interface WishViewController ()
- (IBAction)removeFromWishlist:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation WishViewController

@synthesize imageArray;
@synthesize nameArray;
@synthesize descArray;
@synthesize priceArray;
@synthesize ratingArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    imageArray = [[NSMutableArray alloc] init];
    nameArray = [[NSMutableArray alloc] init];
    descArray = [[NSMutableArray alloc] init];
    priceArray = [[NSMutableArray alloc] init];
    ratingArray = [[NSMutableArray alloc] init];
}

-(void) viewDidAppear:(BOOL)animated {
   
    [self.nameArray removeAllObjects];
    [self.priceArray removeAllObjects];
    [self.imageArray removeAllObjects];
    [self.ratingArray removeAllObjects];
    [self.descArray removeAllObjects];
    
    [self.tableView reloadData];
}

-(void) myMethod {
    NSDictionary *myDict;
    MySingleton *sharedObject = [MySingleton sharedSingletonObject];
    for (int i = 0; i<sharedObject.wishlistArray.count; i++) {
        myDict = [sharedObject.wishlistArray objectAtIndex:i];
        [imageArray addObject:[myDict objectForKey:@"image"]];
        [nameArray addObject:[myDict objectForKey:@"name"]];
        [descArray addObject:[myDict objectForKey:@"description"]];
        [priceArray addObject:[myDict objectForKey:@"price"]];
        [ratingArray addObject:[myDict objectForKey:@"rating"]];
    }
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
    MySingleton *sharedObject = [MySingleton sharedSingletonObject];
    return [sharedObject.wishlistArray count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"wishCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    [self myMethod];
    self.cellImage = (UIImageView *) [cell viewWithTag:2];
    self.cellNameLabel = (UILabel *) [cell viewWithTag:11];
    self.cellPriceLabel = (UILabel *) [cell viewWithTag:13];
    self.cellRatingLabel = (UILabel *) [cell viewWithTag:14];
    self.cellDescLabel = (UILabel *) [cell viewWithTag:12];
    
    self.cellNameLabel.text = self.nameArray[indexPath.row];
    self.cellPriceLabel.text = self.priceArray[indexPath.row];
    self.cellImage.image = [UIImage imageNamed:self.imageArray[indexPath.row]];
    self.cellRatingLabel.text = self.ratingArray[indexPath.row];
    self.cellDescLabel.text = self.descArray[indexPath.row];
    return cell;
}

- (IBAction)removeFromWishlist:(id)sender {
    MySingleton *sharedObject = [MySingleton sharedSingletonObject];
    //[sharedObject.wishlistArray removeObject:self];
    //[self viewDidAppear:YES];
    
    CGPoint touchPoint = [sender convertPoint:CGPointZero toView:self.tableView];
    
    // ------------------------------------------------
    // Now we use this coordinate to find
    // the row where we tap on our tableView.
    // ------------------------------------------------
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:touchPoint];
    
    // ------------------------------------------------
    // now we have the table row (indexPath.row)
    // we can use it to delete from our data source
    // ------------------------------------------------
    
    [sharedObject.wishlistArray removeObjectAtIndex:indexPath.row];
    
    // refresh inteface after updating data source
    [self.tableView reloadData];
}


@end
