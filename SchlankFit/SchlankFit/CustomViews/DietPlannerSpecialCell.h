//
//  CustomCell.h
//  SlimFit
//
//  Created by Ans Riaz on 11/4/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DietPlannerSpecialCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UILabel *customLabel;
@property (nonatomic,weak) IBOutlet UILabel *dietName;
@property (nonatomic,weak) IBOutlet UILabel *dietName2;

-(void) setTitle:(NSString*)_title withSubTitle:(NSString*)_subTitle andTag:(NSString*)_tag;

+(DietPlannerSpecialCell *) tableView:(UITableView*)tableView customCellWithIdentifier:(NSString*)identifier;

@end
