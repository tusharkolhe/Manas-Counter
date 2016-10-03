//
//  TargetViewController.m
//  Siderbar
//
//  Created by Felix ITs 04 on 07/08/16.
//  Copyright © 2016 Felix ITs. All rights reserved.
//

#import "TargetViewController.h"

@interface TargetViewController ()

@end

@implementation TargetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }

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
//-(void) checkTarget
//
//{
//    int num=self.targetTextView.text.intValue;
//    //int num= self.tacountLabel.text.intValue;
//    if(num<0)
//    {
//        UIAlertController *alert=[UIAlertController  alertControllerWithTitle:@"Attention Please!!!" message:@"Your Target must be greater than '0'" preferredStyle:UIAlertControllerStyleAlert];
//        
//        
//        UIAlertAction *yesButton=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
//            
//        }];
//        
//        
//        [alert addAction:yesButton];
//        [self presentViewController:alert animated:YES completion:nil];
//        
//        
//    }else
//    {
//        UIAlertController *alert2=[UIAlertController  alertControllerWithTitle:@"Target is seted as" message:@"." preferredStyle:UIAlertControllerStyleAlert];
//        
//        
//        //UIAlertAction *yesButton=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
//            
//      //  }];
//        
//        
//        //[alert addAction:yesButton];
//        [self presentViewController:alert2 animated:YES completion:nil];
//        
//
////        num=num-1;
////        self.countLabel.text=[NSString stringWithFormat:@"%d", num];
////        
   // }
-(void) check
    {
        int num=self.targetTextView.text.intValue;
        if(num<=0)
    {
                    UIAlertController *alert=[UIAlertController  alertControllerWithTitle:@"Attention Please!!!" message:@"Your Target must be greater than '0'" preferredStyle:UIAlertControllerStyleAlert];
            
            
                    UIAlertAction *yesButton=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            
                    }];
            
            
                    [alert addAction:yesButton];
                    [self presentViewController:alert animated:YES completion:nil];
    }
        else
    {
        target = self.targetTextView.text.intValue;
        NSString * targetString = [NSString stringWithFormat:@"%i",target];

//        NSLog(@"Target :%d",target);

    
        UIAlertController *alert2=[UIAlertController  alertControllerWithTitle:@"Target is seted as" message:targetString preferredStyle:UIAlertControllerStyleAlert];
       
        
        UIAlertAction *yesButton=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)
        {
            ViewController * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
            [self.navigationController pushViewController:vc animated:YES];
            
            vc.countString = targetString;
            
                   }];
        
        
                [alert2 addAction:yesButton];

        [self presentViewController:alert2 animated:YES completion:nil];
        
    }
    }
- (IBAction)targetButton:(id)sender
{
    [self check];
}
@end
