//
//  secondViewController.h
//  lvl2ass2(composeMail)
//
//  Created by Mindstix Software on 24/09/15.
//  Copyright (c) 2015 Mindstix Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>


@interface secondViewController : UIViewController <MFMailComposeViewControllerDelegate>
{
    MFMailComposeViewController *mailComposer;
}
@property (weak, nonatomic) IBOutlet UITextField *txtTo;
@property (weak, nonatomic) IBOutlet UITextField *txtSubject;
@property (weak, nonatomic) IBOutlet UITextView *txtField;
- (IBAction)btnCancel:(id)sender;
- (IBAction)btnSend:(id)sender;

@end
