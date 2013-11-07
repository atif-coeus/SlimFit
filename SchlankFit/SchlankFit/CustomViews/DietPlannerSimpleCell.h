//
//  SecondCustomCell.h
//  SlimFit
//
//  Created by Ans Riaz on 11/4/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DietPlannerSimpleCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UILabel *rowTitle;
@property (nonatomic,weak) IBOutlet UILabel *rowTag;


-(void) setTitle:(NSString*)_title withSubTitle:(NSString*)_subTitle;
+(DietPlannerSimpleCell *) tableView:(UITableView*)tableView secondCustomCellWithIdentifier:(NSString*)identifier;

@end
