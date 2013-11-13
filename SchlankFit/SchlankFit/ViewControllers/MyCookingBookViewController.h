//
//  MyCookingBookViewController.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/13/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCookingBookViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *alertView;
- (IBAction)editButton:(UIBarButtonItem *)sender;
- (IBAction)deleteRows:(id)sender;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;


@end
