//
//  MainProfileViewController.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/11/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainProfileViewController : UIViewController{
    IBOutlet UISegmentedControl *segment;
    IBOutlet UIBarButtonItem *newEntry;
}
- (IBAction)tabChanged:(id)sender;
//@property (weak, nonatomic) IBOutlet UIBarButtonItem *newEntry;

@end
