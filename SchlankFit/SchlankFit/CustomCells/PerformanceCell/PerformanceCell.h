//
//  PerformanceCell.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/12/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PerformanceCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *subTitle;

-(void) mapData:(NSDictionary*)dict;

+(PerformanceCell*)tableView:(UITableView*)tableView performanceCellWithIdentifier:(NSString*)identifier;

@end
