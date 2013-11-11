//
//  OwnDietViewController.m
//  SlimFit
//
//  Created by Ans Riaz on 11/5/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import "OwnDietViewController.h"
#import "OwnDietCustomCell.h"

@interface OwnDietViewController ()

@end

@implementation OwnDietViewController

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
    
    // Request to turn on accelerometer and begin receiving accelerometer events
    
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationChanged:) name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark orientation and motion events

- (void)orientationChanged:(NSNotification *)notification {
    
    // Respond to changes in device orientation
}

-(void) viewDidDisappear {
    
    // Request to stop receiving accelerometer events and turn off accelerometer
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    [[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
    
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)viewDidAppear:(BOOL)animated {
    [self becomeFirstResponder];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    // User was shaking the device. Post a notification named "shake."
    //    [[NSNotificationCenter defaultCenter] postNotificationName:@"shake" object:self];
    totalCalories.text = @"Shaking end";
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    // you can do any thing at this stage what ever you want. Change the song in playlist, show photo, change photo or whatever you want to do
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
}


#pragma mark UITableViewDataSource

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [OwnDietCustomCell tableView:tableView ownDietCellWithIdentifier:@"OwnDietCustomCell"];
    [(OwnDietCustomCell*)cell setTitle:@"Recipe" withRating:3];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (IBAction)entireDatButtonAction:(id)sender {
    
}

@end
