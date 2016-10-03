//
//  TargetViewController.h
//  Siderbar
//
//  Created by Felix ITs 04 on 07/08/16.
//  Copyright © 2016 Felix ITs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"
#import "ViewController.h"

@interface TargetViewController : UIViewController
{
    int target;
}
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UITextView *targetTextView;
- (IBAction)targetButton:(id)sender;

@end
