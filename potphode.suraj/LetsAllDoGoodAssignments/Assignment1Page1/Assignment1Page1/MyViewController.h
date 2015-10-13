//
//  MyViewController.h
//  Assignment1Page1
//
//  Created by Mindstix Software on 07/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *customTableView;
- (IBAction)favoriteButtonClick:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *favoriteButton;

@end
