//
//  ShoppingListNotifier.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/8/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "ShoppingListNotifier.h"

@implementation ShoppingListNotifier {
    NSTimer *mytimer;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

#pragma mark -
-(void) show{
    
    [self setHidden:NO];
    
//    [UIView transitionWithView:self duration:2.0f options:UIViewAnimationOptionTransitionCrossDissolve animations:^{ [self setAlpha:1]; [self setHidden:NO]; } completion:nil];
}

-(void) hide{
    
    [self setHidden:YES];
    
}

+ (id) loadWithNib{
    
    ShoppingListNotifier *result = (ShoppingListNotifier *)[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([ShoppingListNotifier class]) owner:nil options:nil][0];
    
    return result;
}

- (IBAction)closeNotifierView:(id)sender {
    
    [self setHidden:YES];
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
