//
//  DashboardViewController.m
//  SchlankFit
//
//  Created by Muhammad Atif on 31/10/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "DashboardViewController.h"
#import "CustomAdView.h"
#import "SASBannerView.h"

#define bannerFormatID 12161
#define pageID @"185330"

#define bannerHeight 50

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

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self displayTopBanner];
}

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

#pragma mark - Ad lifecycle

- (void)displayTopBanner {
    
    if (self.topBanner != nil) {
        [self.topBanner removeFromSuperview];
        self.topBanner.delegate = nil;
        self.topBanner = nil;
    }
    
    SASBannerView *topBanner = [[SASBannerView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - bannerHeight, CGRectGetMaxX(self.view.frame), bannerHeight)                                                          loader:SASLoaderActivityIndicatorStyleWhite];
    
    self.topBanner = topBanner;
    
    _topBanner.expandsFromTop = YES;
    
    _topBanner.delegate = self;
    
    [_topBanner loadFormatId:bannerFormatID pageId:pageID master:NO target:nil];
	
    [self.view addSubview:_topBanner];
}


- (void)loadTopBannerWithFormatID:(NSInteger)formatID {
    [self displayTopBanner];
	
    [self replaceElementsWithAdHeight:bannerHeight];
	
	[_topBanner loadFormatId:formatID pageId:pageID master:NO target:nil];
}


- (void)replaceElementsWithAdHeight:(CGFloat)height {
    //	_topBanner.frame = CGRectMake(0, self.view.frame.size.height - bannerHeight, CGRectGetMaxX(self.view.frame), height);
    //    [_topBanner setFrame:CGRectMake(0, self.view.frame.size.height - bannerHeight , CGRectGetMaxX(self.view.frame), bannerHeight)];
    //    NSLog(@"%@",NSStringFromCGRect(_topBanner.frame));
}



#pragma mark - SASAdViewDelegate

- (void)adViewDidLoad:(SASAdView *)adView {
	if (adView == self.topBanner) {
	}
}


- (void)adView:(SASAdView *)adView didDownloadAdData:(SmartAdServerAd *)adData {
	if (adView == _topBanner) {
		NSInteger height = bannerHeight;
		[self replaceElementsWithAdHeight:height];
	}
}


- (void)adViewDidFailToLoad:(SASAdView *)adView error:(NSError *)error {
	
	if (adView == self.topBanner) {
        [self.topBanner dismiss];
    }
}


- (void)adViewDidDisappear:(SASAdView *)adView {
	if (adView == self.topBanner) {
	}
}

@end
