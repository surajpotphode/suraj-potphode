//
//  ProductDetailsViewController.h
//  level5assignment1(shoppingApp)
//
//  Created by Mindstix Software on 05/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductDetailsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *productDescription;
@property (strong, nonatomic) IBOutlet UILabel *price;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property NSDictionary *itemDict;
@end
