//
//  LeftImageCell.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/11/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftImageCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UIImageView *icon;
@property (nonatomic,weak) IBOutlet UILabel *title;

-(void) setTitle:(NSString *)title withIcon:(NSString*)image;

+(LeftImageCell *) tableView:(UITableView*)tableView cellWithLeftImageWithIdentifier:(NSString*)identifier;

@end
