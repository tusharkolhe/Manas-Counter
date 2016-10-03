//
//  GreenViewController.h
//  Siderbar
//
//  Created by Felix ITs 04 on 05/08/16.
//  Copyright © 2016 Felix ITs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface GreenViewController : UIViewController


- (IBAction)sidebarButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@end
