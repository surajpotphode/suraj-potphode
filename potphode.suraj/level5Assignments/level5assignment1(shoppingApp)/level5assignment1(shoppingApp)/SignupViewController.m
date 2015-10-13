
//

//  SignupViewController.m

//  level5assignment1(shoppingApp)

//

//  Created by Mindstix Software on 01/10/15.

//  Copyright (c) 2015 Mindstix Software. All rights reserved.

//



#import "SignupViewController.h"



@interface SignupViewController ()

@property NSArray *images;

@property NSTimer *myTimer;

@end



@implementation SignupViewController

@synthesize imageview;

@synthesize signupButton;



- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    imageview.image = [UIImage imageNamed:@"wallpaper5.jpg"];
    
    _images = @[@"wallpaper1.png",@"wallpaper2.jpg",@"wallpaper3.jpg",@"wallpaper4.jpg",@"wallpaper5.jpg",@"wallpaper6.jpg",];
    
    self.myTimer = [NSTimer scheduledTimerWithTimeInterval:01.00 target:self selector:@selector(changeImage) userInfo:nil repeats:YES];
    
    
    
    [[signupButton layer] setBorderWidth:2.0f];
    
    [[signupButton layer] setBorderColor:[UIColor whiteColor].CGColor];
    
}



- (void)changeImage

{
    
    static int counter = 0;
    
    if([_images count] == counter+1)
        
    {
        
        counter = 0;
        
    }
    
    imageview.image = [UIImage imageNamed:[_images objectAtIndex:counter]];
    
    counter++;
    
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

