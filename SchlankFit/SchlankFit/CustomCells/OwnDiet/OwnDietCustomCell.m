//
//  OwnDietCustomCell.m
//  SlimFit
//
//  Created by Ans Riaz on 11/5/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import "OwnDietCustomCell.h"

@implementation OwnDietCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
//        categoryNameView.frame = CGRectMake(0, 0, 200, 72);
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void) setTitle:(NSString*)_title withRating:(int)_rating{
    
    [self.recipeName setText:_title];
    
    if (_rating) {
        UIImage *image = [UIImage imageNamed: @"blackstar.png"];
//        if (_rating == 1) {
//            [star1 setImage:image];
//        } else if (_rating == 2) {
//            [star1 setImage:image];
//            [star2 setImage:image];
//        } else if (_rating == 3) {
//            [star1 setImage:image];
//            [star2 setImage:image];
//            [star3 setImage:image];
//        } else if (_rating == 4) {
//            [star1 setImage:image];
//            [star2 setImage:image];
//            [star3 setImage:image];
//            [star4 setImage:image];
//        } else {
//            [star1 setImage:image];
//            [star2 setImage:image];
//            [star3 setImage:image];
//            [star4 setImage:image];
//            [star5 setImage:image];
//        }
        
        for (UIView *subView in self.ratingView.subviews) {
            if ([subView isKindOfClass:[UIImageView class]]) {
                if (subView.tag  <= _rating+10) {
                    [((UIImageView *)subView) setImage:image];
                }
                
            }
        }
        
        
    }
    
}

+(OwnDietCustomCell *) tableView:(UITableView*)tableView ownDietCellWithIdentifier:(NSString*)identifier {
    OwnDietCustomCell * cell = nil ;
    
    cell = (OwnDietCustomCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray * arr= [[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil];
        cell= [arr objectAtIndex:0];
    }
    return cell;
}

- (void) changeSizeOfCategoryView {
    
    second++;
    if (second == 3) {
        [timer invalidate];
        [UIView animateWithDuration:0.3 delay: 0.0 options: UIViewAnimationOptionCurveEaseIn
                        animations:^{
                            categoryNameView.frame = CGRectMake(0, 0, 55, 72);
                        } completion:nil];
        
    }
    
}

- (IBAction)showCategoryName:(id)sender {
    second = 0;
    [UIView animateWithDuration:0.3 delay: 0.0 options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         categoryNameView.frame = CGRectMake(0, 0, 200, 72);
                     } completion:nil];
    categoryNameView.frame = CGRectMake(0, 0, 200, 72);
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(changeSizeOfCategoryView)
                                           userInfo:nil
                                            repeats:YES];
    [timer fire];
}

- (IBAction)replaceRecipe:(id)sender {
}

@end
