//
//  PreferenceViewController.h
//  level4assignment2(tabBarApplication)
//
//  Created by Mindstix Software on 30/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PreferenceViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
