//
//  CreateDietViewController.h
//  SchlankFit
//
//  Created by Muhammad Atif on 05/11/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"
@interface CreateDietViewController : UIViewController<NIDropDownDelegate>
{
        NIDropDown *dropDown;
}

-(IBAction)selectDiet:(UIButton*)sender;
-(IBAction)checkButtonAction:(UIButton*)sender;

@end
