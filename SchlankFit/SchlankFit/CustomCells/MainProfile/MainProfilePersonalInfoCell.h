//
//  MainProfilePersonalInfoCell.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/11/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainProfilePersonalInfoCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *weight;
@property (weak, nonatomic) IBOutlet UILabel *height;
@property (weak, nonatomic) IBOutlet UILabel *family;
@property (weak, nonatomic) IBOutlet UILabel *age;

-(void) mapData:(NSDictionary*)dict;

+(MainProfilePersonalInfoCell *) tableView:(UITableView*)tableView personalInfoWithIdentifier:(NSString*)identifier;

@end
