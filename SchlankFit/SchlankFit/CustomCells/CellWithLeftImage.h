//
//  CellWithLeftImage.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/7/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellWithLeftImage : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *tageValue;
@property (weak, nonatomic) IBOutlet UILabel *dietName;
@property (weak, nonatomic) IBOutlet UIImageView *dietIcon;

-(void) mapDataOnCellFromDict:(NSDictionary*)data;

+(CellWithLeftImage *) tableView:(UITableView*)tableView cellWithLeftImageWithIdentifier:(NSString*)identifier;

@end
