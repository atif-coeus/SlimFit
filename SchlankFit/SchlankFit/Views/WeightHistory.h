//
//  WeightHistory.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/12/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeightHistory : UIView

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)tabChanged:(id)sender;

@end
