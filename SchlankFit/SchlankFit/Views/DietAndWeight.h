//
//  DietAndWeight.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/12/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DietAndWeight : UIView<UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *mainView;

@property (weak, nonatomic) IBOutlet UIPickerView *weightPicker;

@property (weak, nonatomic) IBOutlet UILabel *totalDiet;

@property (weak, nonatomic) IBOutlet UIView *warningView;

@end
