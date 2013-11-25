//
//  MainProfileViewController.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/11/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "MainProfileViewController.h"
#import "PersonalInfo.h"
#import "PerformanceNutrition.h"
#import "DietAndWeight.h"
#import "WeightHistory.h"

@interface MainProfileViewController (){
    NSMutableArray *data;
    PersonalInfo *personalInfoView;
    PerformanceNutrition *perfNutritionView;
    DietAndWeight *dietWeightView;
    WeightHistory *weightHistoryView;
}

@end

@implementation MainProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void) personalView{
    
    NSArray * arr= [[NSBundle mainBundle] loadNibNamed:@"PersonalInfo" owner:self options:nil];
    
    personalInfoView = [arr objectAtIndex:0];
    [personalInfoView setFrame:CGRectMake(0,segment.frame.size.height,personalInfoView.frame.size.width,personalInfoView.frame.size.width)];
    
    [self.view addSubview:personalInfoView];
}

-(void) performanceNutritionView{
    
    NSArray * arr= [[NSBundle mainBundle] loadNibNamed:@"PerformanceNutrition" owner:nil options:nil];
    
    perfNutritionView = [arr objectAtIndex:0];
    [perfNutritionView setFrame:CGRectMake(0,segment.frame.size.height,perfNutritionView.frame.size.width,perfNutritionView.frame.size.width)];
    
    [self.view addSubview:perfNutritionView];
    
    [perfNutritionView setHidden:YES];
}

-(void) dietAndWeightView{
    
    NSArray * arr= [[NSBundle mainBundle] loadNibNamed:@"DietAndWeight" owner:nil options:nil];
    
    dietWeightView = [arr objectAtIndex:0];
    [dietWeightView setFrame:CGRectMake(0,segment.frame.size.height,dietWeightView.frame.size.width,dietWeightView.frame.size.width)];
    
    [self.view addSubview:dietWeightView];
    
    [dietWeightView setHidden:YES];
}

-(void) weightHistoryView{
    
    NSArray * arr= [[NSBundle mainBundle] loadNibNamed:@"WeightHistory" owner:nil options:nil];
    
    weightHistoryView = [arr objectAtIndex:0];
    [weightHistoryView setFrame:CGRectMake(0,segment.frame.size.height,weightHistoryView.frame.size.width,weightHistoryView.frame.size.width)];
    
    [self.view addSubview:weightHistoryView];

    [weightHistoryView setHidden:YES];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self personalView];
    [self weightHistoryView];
    [self performanceNutritionView];
    [self dietAndWeightView];
    
    [self.navigationItem.rightBarButtonItem.customView setHidden:YES];
    
    [segment setSelectedSegmentIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tabChanged:(id)sender {
    
    [self.navigationItem.rightBarButtonItem.customView setHidden:YES];
    
    if(segment.selectedSegmentIndex == 0){
        [perfNutritionView setHidden:YES];
        [dietWeightView setHidden:YES];
        [weightHistoryView setHidden:YES];
        
        [personalInfoView setHidden:NO];
    }
    if(segment.selectedSegmentIndex == 1){
        [dietWeightView setHidden:YES];
        [weightHistoryView setHidden:YES];
        [personalInfoView setHidden:YES];
        
        [perfNutritionView setHidden:NO];
    }
    if(segment.selectedSegmentIndex == 2){
        [perfNutritionView setHidden:YES];
        [weightHistoryView setHidden:YES];
        [personalInfoView setHidden:YES];
        
        [dietWeightView setHidden:NO];
    }
    if(segment.selectedSegmentIndex == 3){
        
        [perfNutritionView setHidden:YES];
        [dietWeightView setHidden:YES];
        [personalInfoView setHidden:YES];
        
        [self.navigationItem.rightBarButtonItem.customView setHidden:NO];
        [weightHistoryView setHidden:NO];
    }
}

@end
