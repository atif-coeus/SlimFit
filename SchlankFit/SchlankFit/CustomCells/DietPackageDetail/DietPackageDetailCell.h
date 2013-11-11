//
//  CellWithLeftImage.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/7/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DietPackageDetailCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *tageValue;
@property (weak, nonatomic) IBOutlet UILabel *dietName;
@property (weak, nonatomic) IBOutlet UIImageView *dietIcon;
@property (weak, nonatomic) IBOutlet UIImageView *favorite;

-(void) mapDataOnCellFromDict:(NSDictionary*)data;

+(DietPackageDetailCell *) tableView:(UITableView*)tableView cellWithLeftImageWithIdentifier:(NSString*)identifier;

@end
