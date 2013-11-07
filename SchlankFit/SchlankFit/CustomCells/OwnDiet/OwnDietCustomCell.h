//
//  OwnDietCustomCell.h
//  SlimFit
//
//  Created by Ans Riaz on 11/5/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OwnDietCustomCell : UITableViewCell {
//    IBOutlet UIImageView *star1;
//    IBOutlet UIImageView *star2;
//    IBOutlet UIImageView *star3;
//    IBOutlet UIImageView *star4;
//    IBOutlet UIImageView *star5;
    
    IBOutlet UIView *categoryNameView;
    NSTimer *timer;
    
    int second;
}

@property (weak, nonatomic) IBOutlet UIView *ratingView;
@property (nonatomic,weak) IBOutlet UILabel *recipeName;

-(void) setTitle:(NSString*)_title withRating:(int)_rating;

+(OwnDietCustomCell *) tableView:(UITableView*)tableView ownDietCellWithIdentifier:(NSString*)identifier;
- (IBAction)showCategoryName:(id)sender;
- (IBAction)replaceRecipe:(id)sender;

@end
