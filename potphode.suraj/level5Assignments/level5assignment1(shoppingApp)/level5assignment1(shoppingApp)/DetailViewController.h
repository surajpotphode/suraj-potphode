//
//  DetailViewController.h
//  level5assignment1(shoppingApp)
//
//  Created by Mindstix Software on 05/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

//@property(strong,nonatomic) NSDictionary *selectedObject;
@property(strong,nonatomic) NSDictionary *categoryDict;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
