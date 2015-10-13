//
//  CustomCell.h
//  Assignment1Page1
//
//  Created by Mindstix Software on 08/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIView *myView;
@property (strong, nonatomic) IBOutlet UILabel *newsNumber;
@property (strong, nonatomic) IBOutlet UILabel *eventsNumber;
@property (strong, nonatomic) IBOutlet UILabel *volunteerNumber;
@property (strong, nonatomic) IBOutlet UILabel *tag;
@property (strong, nonatomic) IBOutlet UILabel *title;
@property (strong, nonatomic) IBOutlet UIButton *favorite;
@property (strong, nonatomic) IBOutlet UIImageView *image;

@end
