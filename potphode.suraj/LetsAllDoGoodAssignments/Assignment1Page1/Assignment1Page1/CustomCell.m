//
//  CustomCell.m
//  Assignment1Page1
//
//  Created by Mindstix Software on 08/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

@synthesize myView,newsNumber,eventsNumber,volunteerNumber,title,tag,favorite,image;

- (void)awakeFromNib {
    // Initialization code
//    _myView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
//    _myView.layer.shadowOffset = CGSizeMake(1, 1);
//    _myView.layer.shadowOpacity = 5;
//    _myView.layer.shadowRadius = 2.0;
    
    
//    //    create card like cell by giving shadow to view
//    [self.myView.layer setBorderColor:[UIColor colorWithRed:213.0/255.0f green:210.0/255.0f blue:199.0/255.0f alpha:1.0f].CGColor];
//    _myView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
//    [self.myView.layer setBorderWidth:1.0f];
//    [self.myView.layer setShadowOffset:CGSizeMake(1, 1)];
////    [self.myView.layer setShadowColor:[UIColor colorWithRed:234.0f/255.0f green:234.0f/255.0f blue:234.0f/255.0f alpha:1.0].CGColor];
//    
//    [self.myView.layer setShadowRadius:5.0];
//    [self.myView.layer setShadowOpacity:0.8];
    
    [myView.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    
    // drop shadow
    [myView.layer setShadowColor:[UIColor blackColor].CGColor];
    [myView.layer setShadowOpacity:0.2];
    [myView.layer setShadowRadius:.7];
    [myView.layer setShadowOffset:CGSizeMake(1.5, 1.5)];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
