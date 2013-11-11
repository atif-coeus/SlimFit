//
//  ShoppingListViewController.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/8/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIDropDown.h"

@interface ShoppingListViewController : UIViewController<UITextFieldDelegate>{
    NIDropDown *dropDown;
}


@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
