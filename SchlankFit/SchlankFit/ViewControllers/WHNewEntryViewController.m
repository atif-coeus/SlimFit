//
//  WeightHistoryViewController.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/13/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "WHNewEntryViewController.h"

@interface WHNewEntryViewController ()

@end

@implementation WHNewEntryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
    return [NSString stringWithFormat:@"%d kg", row+38];
}

- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
}

#pragma mark - DropDown Delegate Method
-(void) itemSelectedWithText:(NSString*)text atIndex:(int)index{
    
    NSLog(@"%s %@",__PRETTY_FUNCTION__,text);
    
}

-(void)DatePickerDoneClick:(UIButton *)btn{
    
}

-(void)DatePickerCancelClick:(UIButton *)btn{
    
}

- (IBAction)showDatePicker:(id)sender {
    
}

- (IBAction)addEntry:(id)sender {
}

@end
