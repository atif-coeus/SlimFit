//
//  ShoppingListViewController.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/8/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"
#import "DropDownController.h"

@interface ShoppingListViewController : UIViewController<UITextFieldDelegate,DropDownDelegate>{
    NIDropDown *dropDown;
    DropDownController *dropDownPicker;
}


@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
