//
//  DietPackageDetailViewController.m
//  SlimFit
//
//  Created by Ans Riaz on 11/6/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import "DietPackageBuyViewController.h"

@interface DietPackageBuyViewController () <UITextFieldDelegate>{
    bool couponisValid;
}

@end

@implementation DietPackageBuyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) mapDataonView{
    if(_dietDict){
        [self.navigationItem setTitle:_dietDict[@"dietPackage"]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    couponisValid = false;
    
    [self mapDataonView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)CouponCodeButton:(id)sender {
    UIAlertView *alert;
    
    alert = [[UIAlertView alloc]initWithTitle:@"" message:@"Bitte geben Sie Ihren Gutscheincode ein." delegate:self cancelButtonTitle:@"Abbrechen" otherButtonTitles:@"Einlösen",nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alert textFieldAtIndex:0].delegate = self;
    [alert setTag:100];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        
        if (alertView.tag == 100) {
            UIAlertView *alert;
            if(couponisValid){
                alert = [[UIAlertView alloc] initWithTitle:@"" message:@"Sie haben einen Gutscheincode für folgenden Inhalt erfolgreich eingelöst: (Diet 1)" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                
            } else {
                alert = [[UIAlertView alloc] initWithTitle:@"" message:@"Der von Ihnen eingegebene Gutscheincode ist nicht einlösbar”" delegate:self cancelButtonTitle:@"Abbrechen" otherButtonTitles:@"Erneut versuchen", nil];
            }
            [alert setTag:200];
            [alert show];
        }

    }
}

@end
