//
//  ViewController.m
//  SchlankFit
//
//  Created by Muhammad Atif on 30/10/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "SplashViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

#pragma mark - WebStuff


#pragma mark - Actions

#pragma mark - Controllers Actions

-(void) contentLoadedSuccessfully{

    [alertView dismissView:YES];
    [self performSegueWithIdentifier:@"dashboardSegue" sender:nil];

}

#pragma mark - InitContent
- (void) loadContent{
    
    alertView = [DownloadingAlert loadWithNib];
    [alertView show];
    
    [self performSelector:@selector(contentLoadedSuccessfully) withObject:nil afterDelay:3.0];
    
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
