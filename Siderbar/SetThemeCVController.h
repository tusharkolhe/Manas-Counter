//
//  SetThemeCVController.h
//  Siderbar
//
//  Created by Felix ITs 04 on 11/08/16.
//  Copyright © 2016 Felix ITs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface SetThemeCVController : UICollectionViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@end
