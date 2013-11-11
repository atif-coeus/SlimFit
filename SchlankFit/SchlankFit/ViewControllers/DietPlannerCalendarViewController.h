//
//  DietPlannerCalenderViewController.h
//  SlimFit
//
//  Created by Ans Riaz on 11/6/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KalViewController;

@interface DietPlannerCalendarViewController : UIViewController{
    KalViewController *kal;
    id dataSource;
}
@property (weak, nonatomic) IBOutlet UIView *calender;
- (IBAction)dietStateButton:(id)sender;

@end
