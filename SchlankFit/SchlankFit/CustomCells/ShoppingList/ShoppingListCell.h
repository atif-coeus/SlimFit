//
//  ShoppingListCell.h
//  SchlankFit
//
//  Created by Rizh Ch on 10/11/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"

@interface ShoppingListCell : UITableViewCell<NIDropDownDelegate>{
    NIDropDown *dropDown;
}

@property (nonatomic,weak) IBOutlet UITextField *itemAmount;
@property (nonatomic,weak) IBOutlet UIButton *itemUnit;
@property (nonatomic,weak) IBOutlet UITextField *itemName;
- (IBAction)showUnits:(id)sender;

@property (nonatomic,weak) IBOutlet UIView *editView;

-(void)editItem;

@end
