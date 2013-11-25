//
//  MyCookingBookCell.h
//  SchlankFit
//
//  Created by Ans Riaz on 11/13/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCookingBookCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *recipeTime;
@property (weak, nonatomic) IBOutlet UIButton *deleteButton;
@property (weak, nonatomic) IBOutlet UIView *textView;
@property (weak, nonatomic) IBOutlet UIView *ratingView;
@property (nonatomic,weak) IBOutlet UILabel *recipeName;
@property (weak, nonatomic) IBOutlet UILabel *dietType;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImage;

-(void) mapData:(NSDictionary*)dict;
-(void) isTableEditingMode:(BOOL)isEditing;

+(MyCookingBookCell *) tableView:(UITableView*)tableView cookBookCellWithIdentifier:(NSString*)identifier;


@end
