//
//  ShoppingListNotifier.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/8/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShoppingListNotifier : UIView{
    NSTimer *myTimer;
}

-(void) show;
-(void) hide;
+ (id) loadWithNib;
- (IBAction)closeNotifierView:(id)sender;

@end
