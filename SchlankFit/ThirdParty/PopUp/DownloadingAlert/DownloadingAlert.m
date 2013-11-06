//
//  FirstCheckinView.m
//  Spontify
//
//  Created by Ahsan on 8/3/12.
//  Copyright (c) 2012 WhiteSpaceConflict. All rights reserved.
//

#import "DownloadingAlert.h"

@implementation DownloadingAlert   

#pragma mark - XCODE STANDARD METHODS

-(void) initContent{
 
 
}

+ (id) loadWithNib{

    DownloadingAlert *result = (DownloadingAlert *)[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([DownloadingAlert class]) owner:nil options:nil][0];
    [result initContent];
    [result initializeSettings];

    return result;
}

 
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

#pragma mark - ACTIONS STUFF



@end
