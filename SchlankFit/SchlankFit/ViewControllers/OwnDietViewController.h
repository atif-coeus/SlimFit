//
//  OwnDietViewController.h
//  SlimFit
//
//  Created by Ans Riaz on 11/5/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OwnDietViewController : UIViewController{
    IBOutlet UILabel *totalCalories;
}

@property (nonatomic, retain) IBOutlet UITableView *my_table;
- (IBAction)entireDatButtonAction:(id)sender;

@end
