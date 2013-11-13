//
//  WeightHistoryListCell.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/12/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeightHistoryListCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *weightLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UIButton *deleteButton;
@property (weak, nonatomic) IBOutlet UIButton *imageButton;

-(void) setDateLabel:(NSString *)_d withWeight:(NSString*)_w;
+(WeightHistoryListCell*)tableView:(UITableView*)tableView weightHistoryCellWithIdentifier:(NSString*)identifier;

@end
