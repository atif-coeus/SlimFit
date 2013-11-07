//
//  DietPlannerCalenderViewController.m
//  SlimFit
//
//  Created by Ans Riaz on 11/6/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import "DietPlannerCalendarViewController.h"
#import "Kal.h"

#import <EventKit/EventKit.h>
#import <EventKitUI/EventKitUI.h>

@interface DietPlannerCalendarViewController () <UITableViewDelegate>

@end

@implementation DietPlannerCalendarViewController

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
    
    kal = [[KalViewController alloc] init];
    kal.title = @"NativeCal";
    
    kal.delegate = self;
//    dataSource = [[EventKitDataSource alloc] init];
//    kal.dataSource = dataSource;
    
    // Setup the navigation stack and display it.
    [self.calender addSubview:kal.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dietStateButton:(id)sender {
}
@end
