//
//  ProductDetailsViewController.m
//  level5assignment1(shoppingApp)
//
//  Created by Mindstix Software on 05/10/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "ProductDetailsViewController.h"
#import "MySingleton.h"

@interface ProductDetailsViewController ()
- (IBAction)wishButtonClick:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *buttonWish;
@property NSString *imageName;
@end

@implementation ProductDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.image.image = [UIImage imageNamed:[self.itemDict objectForKey:@"image"]];
    self.backgroundImage.image = [UIImage imageNamed:[self.itemDict objectForKey:@"image"]];
    self.name.text = [self.itemDict objectForKey:@"name"];
    self.productDescription.text = [self.itemDict objectForKey:@"description"];
    self.price.text = [self.itemDict objectForKey:@"price"];
    self.imageName = @"love.png";
    MySingleton *sharedObject = [MySingleton sharedSingletonObject];
//    [sharedObject.wishlistArray addObject:self.itemDict];
    NSLog(@"%@",sharedObject.wishlistArray);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)wishButtonClick:(id)sender {
    
    MySingleton *sharedObject = [MySingleton sharedSingletonObject];
    
    if ([self.imageName isEqualToString:@"love.png"]) {
        [self.buttonWish setImage:[UIImage imageNamed:@"wish_heart.png"] forState:UIControlStateNormal];
        self.imageName = @"wish_heart.png";
        if (![sharedObject.wishlistArray containsObject:self.itemDict]) {
            [sharedObject.wishlistArray addObject:self.itemDict];
        }
        
        NSLog(@"%@",sharedObject.wishlistArray);
    }
    else
    {
        [self.buttonWish setImage:[UIImage imageNamed:@"love.png"] forState:UIControlStateNormal];
        self.imageName = @"love.png";
        [sharedObject.wishlistArray removeObject:self.itemDict];
        NSLog(@"%@",sharedObject.wishlistArray);

    }
}
@end
