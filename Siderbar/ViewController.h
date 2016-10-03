//
//  ViewController.h
//  Siderbar
//
//  Created by Felix ITs 04 on 05/08/16.
//  Copyright © 2016 Felix ITs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<AVAudioPlayerDelegate>
{
    AVAudioPlayer *targetPlay;
    
}

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UIButton *countButton;

@property (strong, nonatomic) NSString * countString;


- (IBAction)counterButton:(id)sender;
- (IBAction)resetBtn:(id)sender;
- (IBAction)reduceBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UIButton *reduceButton;

@end

