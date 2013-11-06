//
//  CreateDietNotifierView.m
//  SchlankFit
//
//  Created by Muhammad Atif on 05/11/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "CreateDietNotifierView.h"

@implementation CreateDietNotifierView


#pragma mark - 
-(void) show{
    
    [self setAlpha:0];
    
    [UIView transitionWithView:self
                      duration:2.0f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [self setAlpha:1];
                    } completion:nil];
}


-(void) hide{
    
    [self setAlpha:1];
    
    [UIView transitionWithView:self
                      duration:2.0f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [self setAlpha:0];
                    } completion:nil];
}


#pragma mark -

-(void) initContent{
    [self setAlpha:0];
}

-(void) initializeSettings{
    
    
}

+ (id) loadWithNib{
    
    CreateDietNotifierView *result = (CreateDietNotifierView *)[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([CreateDietNotifierView class]) owner:nil options:nil][0];
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
