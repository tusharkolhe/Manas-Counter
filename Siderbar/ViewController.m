//
//  ViewController.m
//  Siderbar
//
//  Created by Felix ITs 04 on 05/08/16.
//  Copyright © 2016 Felix ITs. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title=@"Counter";
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
//    self.countLabel.text = _countString;

    NSURL * url=[[NSBundle mainBundle]URLForResource:@"temple bell" withExtension:@"mp3"];
    targetPlay =[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    targetPlay.delegate=self;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) addCount
{

    int num= self.countLabel.text.intValue;
   
    num=num+1;
    self.countLabel.text=[NSString stringWithFormat:@"%d", num];

    if (num == _countString.intValue)
    {
        
        NSInteger a=[self.countString integerValue];
        
//       NSLog(@"\n\n%li",a);
        
        
        if (a==a-1) {
            NSLog(@"\n\n\t %li",a);
        }
        NSLog(@"Target Reached");
        UIAlertController *alert=[UIAlertController  alertControllerWithTitle:@"Pay Attention!!!" message:@"Tagret is reached!!!" preferredStyle:UIAlertControllerStyleAlert];
        
        
        UIAlertAction *yesButton=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            
        }];
        
        
        [alert addAction:yesButton];
        [self presentViewController:alert animated:YES completion:nil];
        self.countLabel.text = @"00";
        [targetPlay play];
    }
    
}

-(void) reset
{
    

    self.countLabel.text=@"00";
}

-(void) reduce

{

    int num= self.countLabel.text.intValue;
    if(num==0)
    {
        UIAlertController *alert=[UIAlertController  alertControllerWithTitle:@"Pay Attention!!!" message:@"Your count is 0 now!!!" preferredStyle:UIAlertControllerStyleAlert];
        
        
        UIAlertAction *yesButton=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            
        }];
        
        
        [alert addAction:yesButton];
        [self presentViewController:alert animated:YES completion:nil];
        

    }else
    {
        num=num-1;
        self.countLabel.text=[NSString stringWithFormat:@"%d", num];
        
    }
    
}
- (IBAction)counterButton:(id)sender
{
    [self addCount];
    
}

- (IBAction)resetBtn:(id)sender
{
    [self reset];
    
   
}

- (IBAction)reduceBtn:(id)sender
{
    
    
    [self reduce];
    
}
@end
