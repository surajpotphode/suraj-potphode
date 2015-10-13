//
//  secondViewController.m
//  lvl2ass2(composeMail)
//
//  Created by Mindstix Software on 24/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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
- (IBAction)btnCancel:(id)sender{
    
}
- (IBAction)btnSend:(id)sender {
    //NSArray *recipientsArray = @[_txtTo.text];
    NSLog(@"to---%@",_txtTo.text);
    NSLog(@"subject---%@",_txtSubject.text);
    NSLog(@"body---%@",_txtField.text);
    mailComposer = [[MFMailComposeViewController alloc]init];
    mailComposer.mailComposeDelegate = self;
    [mailComposer setSubject:_txtSubject.text];
   // [mailComposer setToRecipients:recipientsArray];
    [mailComposer setToRecipients:[NSArray arrayWithObjects:_txtTo.text, nil]];
    [mailComposer setMessageBody:_txtField.text isHTML:NO];
    [self presentViewController:mailComposer animated:YES completion:NULL];
    
}

#pragma mark - mail compose delegate
/*
-(void)mailComposeController:(MFMailComposeViewController *)controller
         didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    if (result) {
        NSLog(@"Result : %d",result);
    }
    if (error) {
        NSLog(@"Error : %@",error);
    }
    //[self dismissModalViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:NULL];
}
*/

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
