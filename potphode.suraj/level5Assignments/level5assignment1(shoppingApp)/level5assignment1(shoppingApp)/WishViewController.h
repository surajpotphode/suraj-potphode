//
//  WishViewController.h
//  level5assignment1(shoppingApp)
//
//  Created by Mindstix Software on 01/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WishViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (atomic, retain) NSMutableArray *nameArray;
@property (atomic, retain) NSMutableArray *priceArray;
@property (atomic, retain) NSMutableArray *descArray;
@property (atomic, retain) NSMutableArray *ratingArray;
@property (atomic, retain) NSMutableArray *imageArray;

@property (nonatomic, strong) NSMutableArray *testArray;

@property (nonatomic,strong) UILabel *cellNameLabel;
@property (nonatomic,strong) UILabel *cellPriceLabel;
@property (nonatomic,strong) UILabel *cellDescLabel;
@property (nonatomic,strong) UILabel *cellRatingLabel;
@property (nonatomic,strong) UIImageView *cellImage;



@end
