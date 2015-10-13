//
//  HomeViewController.m
//  level5assignment1(shoppingApp)
//
//  Created by Mindstix Software on 01/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "HomeViewController.h"
#import "DetailViewController.h"

@interface HomeViewController ()

@property NSDictionary *categoryList;
@property NSMutableArray *categoryArray;
@property NSMutableArray *imageArray;
@property UIImageView *cellImage;
@property NSMutableArray *array1;
@property UILabel *cellLabel;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    [self readDataFromFile];
    
    //[self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) readDataFromFile
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Category" ofType:@"json"];
    NSString *myJSON = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];
    // Parse the string into JSON
    self.categoryList = [NSJSONSerialization JSONObjectWithData:[myJSON dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    _array1 = [self.categoryList objectForKey:@"category"];
    NSDictionary *dic;
    NSString *name;
    self.categoryArray = [[NSMutableArray alloc]init];
    self.imageArray = [[NSMutableArray alloc]init];
    for (int i=0; i<_array1.count; i++) {
        dic = [_array1 objectAtIndex:i];
        name = [dic objectForKey:@"name"];
        [self.imageArray addObject:[dic objectForKey:@"image"]];
        [self.categoryArray addObject:name];
    }
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.categoryArray count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"homeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    self.cellImage = (UIImageView *) [cell viewWithTag:2];
    self.cellLabel = (UILabel *) [cell viewWithTag:1];
    self.cellLabel.text = self.categoryArray[indexPath.row];
    self.cellImage.image = [UIImage imageNamed:self.imageArray[indexPath.row]];
    //cell.textLabel.text = _categoryArray[indexPath.row];
    return cell;
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation*/

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"productDetail"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *destViewController = segue.destinationViewController;
        //NSMutableArray *array2 = [_categoryList objectForKey:@"categories"];
        //destViewController.selectedObject = [array2 objectAtIndex:indexPath.row];
        destViewController.categoryDict = [_array1 objectAtIndex:indexPath.row];
        destViewController.title = [_categoryArray objectAtIndex:indexPath.row];
    }
}



@end
