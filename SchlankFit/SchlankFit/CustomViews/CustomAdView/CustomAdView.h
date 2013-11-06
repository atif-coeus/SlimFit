//
//  CustomAdView.h
//  SchlankFit
//
//  Created by Muhammad Atif on 01/11/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomAdView : UIView
{
    IBOutlet UIImageView * adImageView;
    int imgNumber;
    
}

+ (id) loadWithNib;

@end
