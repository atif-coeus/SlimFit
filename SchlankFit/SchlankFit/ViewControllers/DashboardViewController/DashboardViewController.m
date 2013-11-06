//
//  DashboardViewController.m
//  SchlankFit
//
//  Created by Muhammad Atif on 31/10/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "DashboardViewController.h"
#import "CustomAdView.h"

@interface DashboardViewController ()

@end

@implementation DashboardViewController

#pragma mark - WebStuff


#pragma mark - Actions


#pragma mark - Controllers Actions


#pragma mark - InitContent

-(void) addCustomAdView{
    CustomAdView *adView = [CustomAdView loadWithNib];
    [adContainerView addSubview:adView];
}

- (void) loadContent{
//    [self.navigationController setNavigationBarHidden:NO];
    [self addCustomAdView];
    
}


#pragma mark - LifeCycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self performSelector:@selector(loadContent)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
