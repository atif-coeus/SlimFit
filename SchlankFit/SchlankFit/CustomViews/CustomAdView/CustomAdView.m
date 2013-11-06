//
//  CustomAdView.m
//  SchlankFit
//
//  Created by Muhammad Atif on 01/11/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "CustomAdView.h"

@implementation CustomAdView

-(void) setRotatingImage:(UIImage*)img{

    [UIView transitionWithView:self
                      duration:2.0f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [adImageView setImage:img];
                    } completion:nil];
}

-(void) rotateContent: (NSNumber *)imgNo{

    int newImgNo = rand()%4;
    if (newImgNo == imgNumber) {
        newImgNo +=1;
    }
    imgNumber = newImgNo;
    
    if (imgNumber == 0) {
        imgNumber +=1;
    }
    else if (imgNumber == 4) {
        imgNumber -=1;
    }
    

    NSString *imgName = [NSString stringWithFormat:@"bannerImage%@",imgNo];
    [self setRotatingImage:[UIImage imageNamed:imgName]];
    NSNumber *imageNumber = [NSNumber numberWithInt:imgNumber];
    [self performSelector:@selector(rotateContent:) withObject:imageNumber afterDelay:5.0];
}


-(void) initContent{
    
    imgNumber = 0;
    NSNumber *imageNumber = [NSNumber numberWithInt:imgNumber];
    [self performSelector:@selector(rotateContent:) withObject:imageNumber afterDelay:5.0];
}

-(void) initializeSettings{
    
    
}

+ (id) loadWithNib{
    
    CustomAdView *result = (CustomAdView *)[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([CustomAdView class]) owner:nil options:nil][0];
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

@end
