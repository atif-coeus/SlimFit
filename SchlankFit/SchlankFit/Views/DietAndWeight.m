//
//  DietAndWeight.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/12/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "DietAndWeight.h"
#import "WeightAlarmView.h"

@implementation DietAndWeight

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSArray *arr = [NSArray arrayWithObjects:@"38 kg",@"39 kg",@"40 kg",@"41 kg",@"42 kg",@"43 kg",@"44 kg",@"45 kg",@"46 kg",@"47 kg",nil];
        
        [self.weightPicker selectRow:4 inComponent:0 animated:YES];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 9;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [NSString stringWithFormat:@"%d cm", row+38];
}

- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    if(row < 3){
        [self.warningView setHidden:NO];
        self.mainView.frame = CGRectMake(0, 75, self.frame.size.width, self.frame.size.height);
    } else {
        [self.warningView setHidden:YES];
        [self.mainView setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    }

}


@end
