//
//  ShoppingListViewController.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/8/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import "NIDropDown.h"
#import "DropDownController.h"

@interface ShoppingListViewController : UIViewController<UITextFieldDelegate,DropDownDelegate, MFMailComposeViewControllerDelegate>{
    NIDropDown *dropDown;
    DropDownController *dropDownPicker;
}


@property (weak, nonatomic) IBOutlet UITextField *addEntryTextFiled;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)shareViaEmail:(id)sender;


@end
