//
//  ThirdViewController.m
//  lvl1ass2UsingJson
//
//  Created by Mindstix Software on 23/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *lblDesc;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;
@property (weak, nonatomic) IBOutlet UILabel *lblRating;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _lblName.text = [_detailsDict objectForKey:@"name"];
    _lblDesc.text = [_detailsDict objectForKey:@"description"];
    _lblPrice.text = [_detailsDict objectForKey:@"price"];
    _lblRating.text = [_detailsDict objectForKey:@"rating"];
    _img.image = [UIImage imageNamed:[_detailsDict objectForKey:@"image"]];
    
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

@end
