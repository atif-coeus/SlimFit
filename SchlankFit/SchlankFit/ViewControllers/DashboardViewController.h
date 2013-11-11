//
//  DashboardViewController.h
//  SchlankFit
//
//  Created by Muhammad Atif on 31/10/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SASBannerView.h"
#import "SASInterstitialView.h"

@interface DashboardViewController : UIViewController <SASAdViewDelegate>{
    IBOutlet UIView *adContainerView;
}

@property (nonatomic, retain) SASBannerView *topBanner;

@end
