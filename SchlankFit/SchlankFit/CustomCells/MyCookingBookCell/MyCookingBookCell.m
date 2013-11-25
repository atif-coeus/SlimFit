//
//  MyCookingBookCell.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/13/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "MyCookingBookCell.h"

@implementation MyCookingBookCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) isTableEditingMode:(BOOL)isEditing{
    if (isEditing) {
        [self.deleteButton setHidden:NO];
        [self.recipeImage setHidden:YES];
        
        CGRect viewFrame = self.textView.frame;
        viewFrame.origin.x+=24;
        self.textView.frame = viewFrame;
    } else {
        [self.deleteButton setHidden:YES];
        [self.recipeImage setHidden:NO];
        CGRect viewFrame = self.textView.frame;
        viewFrame.origin.x -= 24;
        self.textView.frame = viewFrame;
    }
}

-(void) mapData:(NSDictionary*)dict{
    [self.recipeName setText:dict[@"recipe"]];
    [self.recipeTime setText:dict[@"time"]];
    [self.dietType setText:dict[@"type"]];
    
    UIImage *image = [UIImage imageNamed:dict[@"image"]];
    [self.recipeImage setImage:image];
    
    int _rating = ((NSNumber*) dict[@"rating"]).intValue;
    if (_rating) {
        UIImage *image = [UIImage imageNamed: @"blackstar.png"];
        
        for (UIView *subView in self.ratingView.subviews) {
            if ([subView isKindOfClass:[UIImageView class]]) {
                if (subView.tag  <= _rating+10) {
                    [((UIImageView *)subView) setImage:image];
                }
                
            }
        }
    }
}

+(MyCookingBookCell *) tableView:(UITableView*)tableView cookBookCellWithIdentifier:(NSString*)identifier {
    MyCookingBookCell * cell = nil ;
    
    cell = (MyCookingBookCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray * arr= [[NSBundle mainBundle] loadNibNamed:@"MyCookingBookCell" owner:self options:nil];
        cell= [arr objectAtIndex:0];
    }
    return cell;
}

@end
