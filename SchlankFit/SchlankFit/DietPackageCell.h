//
//  DietPackageCell.h
//  SlimFit
//
//  Created by Ans Riaz on 11/6/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DietPackageCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UILabel *dietPackName;
@property (nonatomic,weak) IBOutlet UILabel *diaten;
@property (nonatomic,weak) IBOutlet UILabel *price;
@property (nonatomic,weak) IBOutlet UIImageView *dietIcon;

-(void) mapDataOnCellFromDict:(NSDictionary*)data;

+(DietPackageCell *) tableView:(UITableView*)tableView ownDietCellWithIdentifier:(NSString*)identifier;

@end
