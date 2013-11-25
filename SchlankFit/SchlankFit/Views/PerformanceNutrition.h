//
//  PerformanceNutrition.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/12/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DropDownController.h"

@interface PerformanceNutrition : UIView <UIPickerViewDelegate, UIPickerViewDataSource>


@property (nonatomic,weak) IBOutlet UITableView *tableView;
@property (nonatomic, retain) UIPickerView *picker;

@end
